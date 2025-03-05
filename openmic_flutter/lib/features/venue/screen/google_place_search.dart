import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openmic_flutter/features/venue/component/google_place_search_comp.dart';
import 'package:openmic_flutter/features/venue/venue_routes.dart';

class GooglePlaceSearchScreen extends ConsumerWidget {
  const GooglePlaceSearchScreen({super.key});

  static String route() => "${VenueRoutes.namespace}/search";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Place Search'),
      ),
      body: GooglePlaceSearchComponent(),
    );
  }
}
