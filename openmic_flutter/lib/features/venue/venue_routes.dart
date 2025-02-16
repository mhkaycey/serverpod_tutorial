import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:openmic_flutter/features/venue/screen/venue_detail_screen.dart';
import 'package:openmic_flutter/features/venue/screen/venue_edit_screen.dart';
import 'package:openmic_flutter/features/venue/screen/venue_root_screen.dart';

class VenueRoutes {
  static String namespace = '/venue';
  static final shellNavigatoraKey =
      GlobalKey<NavigatorState>(debugLabel: "Venue Shell");

  static StatefulShellBranch branch = StatefulShellBranch(
    navigatorKey: shellNavigatoraKey,
    routes: [
      GoRoute(
        path: namespace,
        builder: (_, __) => VenueRootScreen(),
      ),

      // Add more routes here
      GoRoute(
        path: VenueDetailScreen.route(),
        builder: (context, state) => VenueDetailScreen(
          venueId: int.tryParse(state.pathParameters['id'] ?? '') ?? 0,
        ),
      ),

      GoRoute(
        path: VenueEditScreen.route(),
        builder: (context, state) => VenueEditScreen(
          venueId: int.tryParse(state.pathParameters['id'] ?? '') ?? 0,
        ),
      ),
    ],
  );
}
