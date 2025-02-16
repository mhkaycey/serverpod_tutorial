import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:openmic_flutter/features/post/screen/post_root_screen.dart';

class PostRoutes {
  static String namespace = '/post';
  static final shellNavigatoraKey =
      GlobalKey<NavigatorState>(debugLabel: "Post Shell");

  static StatefulShellBranch branch = StatefulShellBranch(
    navigatorKey: shellNavigatoraKey,
    routes: [
      GoRoute(
        path: namespace,
        builder: (_, __) => PostRootScreen(),
      ),
    ],
  );
}
