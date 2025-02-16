import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:openmic_flutter/features/event/screen/even_root_screen.dart';

class EventRoutes {
  static String namespace = '/event';
  static final shellNavigatoraKey =
      GlobalKey<NavigatorState>(debugLabel: "Event Shell");

  static StatefulShellBranch branch = StatefulShellBranch(
    navigatorKey: shellNavigatoraKey,
    routes: [
      GoRoute(
        path: namespace,
        builder: (_, __) => EventRootScreen(),
      ),
    ],
  );
}
