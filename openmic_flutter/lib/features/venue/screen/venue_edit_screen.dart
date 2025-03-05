import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openmic_flutter/features/venue/component/venue_form_component.dart';
import 'package:openmic_flutter/features/venue/provider/venue_details_provider.dart';
import 'package:openmic_flutter/features/venue/venue_routes.dart';

class VenueEditScreen extends ConsumerWidget {
  final int venueId;
  const VenueEditScreen({super.key, required this.venueId});

  static String route([int? id]) =>
      "${VenueRoutes.namespace}/edit/${id ?? ':id'}";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final venueData = ref.watch(venueDetailProvider(venueId));
    // log(venueData.toString());
    // log(venueId.toString());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(venueId == 0 ? 'Create Venue' : "Edit Venue"),
      ),
      body: venueData.when(
        data: (venue) {
          if (venue == null) {
            return Center(
              child: Text("Venue not found"),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: VenueFormComponent(),
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
