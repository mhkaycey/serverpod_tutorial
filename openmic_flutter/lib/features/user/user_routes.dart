import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:openmic_flutter/features/user/screens/profile_root_screen.dart';

class UserRoutes {
  static String namespace = '/user';
  static final shellNavigatoraKey =
      GlobalKey<NavigatorState>(debugLabel: "User Shell");

  static StatefulShellBranch branch = StatefulShellBranch(
    navigatorKey: shellNavigatoraKey,
    routes: [
      GoRoute(
        path: namespace,
        builder: (_, __) => ProfileRootScreen(),
      ),
    ],
  );
}
