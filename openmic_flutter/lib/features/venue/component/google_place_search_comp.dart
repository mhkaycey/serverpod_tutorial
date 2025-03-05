import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:openmic_flutter/core/components/debouncing_search.dart';
import 'package:openmic_flutter/features/venue/provider/google_place_search_provider.dart';
import 'package:openmic_flutter/features/venue/provider/venue_form_provider.dart';
import 'package:openmic_flutter/features/venue/screen/venue_edit_screen.dart';

class GooglePlaceSearchComponent extends ConsumerWidget {
  const GooglePlaceSearchComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(googlePlaceSearchProvider.notifier);
    final results = ref.watch(googlePlaceSearchProvider);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: DebouncingSearchBar(
            autoFocus: true,
            hintText: 'Search for places',
            onChanged: (value) {
              if (value.isEmpty) {
                provider.clear();
                return;
              }
              provider.search(value);
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: results.length,
            itemBuilder: (context, index) {
              final place = results[index];
              return Card(
                shape: RoundedRectangleBorder(),
                child: ListTile(
                  title: Text(place.name),
                  subtitle: Text(
                    place.address,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  onTap: () {
                    final formProvider = ref.read(venueFormProvider.notifier);
                    formProvider.clear();
                    formProvider.setFromGooglePlace(place);
                    context.replace(VenueEditScreen.route(0));
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
