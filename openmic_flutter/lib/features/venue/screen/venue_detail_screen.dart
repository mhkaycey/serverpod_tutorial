import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openmic_flutter/features/venue/provider/venue_details_provider.dart';
import 'package:openmic_flutter/features/venue/venue_routes.dart';

class VenueDetailScreen extends ConsumerWidget {
  final int venueId;
  const VenueDetailScreen({super.key, required this.venueId});

  static String route([int? id]) => "${VenueRoutes.namespace}/${id ?? ':id'}";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final venue = ref.watch(venueDetailProvider(venueId));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Venue Detail'),
      ),
      body: venue.when(
        data: (venue) {
          if (venue == null) {
            return Center(
              child: Text("Venue not found"),
            );
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(venue.name),
                Text(venue.shortAddress),
                Text(venue.instagramUrl),
              ],
            ),
          );
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
