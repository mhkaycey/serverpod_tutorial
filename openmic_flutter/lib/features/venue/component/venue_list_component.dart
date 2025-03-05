import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openmic_client/openmic_client.dart';
import 'package:openmic_flutter/core/components/infinite_list_component.dart';
import 'package:openmic_flutter/features/venue/component/venue_list_tile.dart';
import 'package:openmic_flutter/features/venue/provider/venue_list_provider.dart';

class VenueListComponent extends ConsumerWidget {
  const VenueListComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(venueListProvider.notifier);

    final pagingController = provider.pagingController;

    return InfiniteListComponent<Venue>(
      handleRefresh: () => provider.refresh(),
      pagingController: pagingController,
      noItemsFoundMessage: 'No venues found.',
      itemBuilder: (context, venue, index) {
        return VenueTiles(venue: venue);
      },
    );
  }
}
