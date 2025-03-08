import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:openmic_flutter/features/venue/component/venue_details_comp.dart';
import 'package:openmic_flutter/features/venue/provider/venue_details_provider.dart';
import 'package:openmic_flutter/features/venue/provider/venue_form_provider.dart';
import 'package:openmic_flutter/features/venue/screen/venue_edit_screen.dart';
import 'package:openmic_flutter/features/venue/venue_routes.dart';

class VenueDetailScreen extends ConsumerWidget {
  final int venueId;
  const VenueDetailScreen({super.key, required this.venueId});

  static String route([int? id]) => "${VenueRoutes.namespace}/${id ?? ':id'}";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final venue = ref.watch(venueDetailProvider(venueId));
    return Scaffold(
      appBar: venue.when(
        data: (venue) {
          if (venue == null) {
            return AppBar(
              title: Text("Error"),
            );
          }
          return AppBar(
            title: Text(venue.name),
            actions: [
              if (venue.id != null) //TODO if it is the owner!!
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    ref.read(venueFormProvider.notifier).load(venue.id!);
                    context.push(VenueEditScreen.route(venue.id!));
                  },
                ),
            ],
          );
        },
        error: (error, _) => AppBar(
          title: Text("Error"),
        ),
        loading: () => AppBar(),
      ),
      body: venue.when(
        data: (venue) {
          if (venue == null) {
            return Center(
              child: Text("Venue not found"),
            );
          }
          return VenueDetailComponent(venue: venue);
        },
        loading: () => Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, _) => Center(
          child: Text(error.toString()),
        ),
      ),
    );
  }
}
