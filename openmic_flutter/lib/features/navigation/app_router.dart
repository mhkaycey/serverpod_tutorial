import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:openmic_flutter/features/auth/screens/login_screen.dart';
import 'package:openmic_flutter/features/event/event_routes.dart';
import 'package:openmic_flutter/features/navigation/app_container.dart';
import 'package:openmic_flutter/features/post/post_routes.dart';
import 'package:openmic_flutter/features/user/user_routes.dart';
import 'package:openmic_flutter/features/venue/venue_routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  return GoRouter(
    initialLocation: PostRoutes.namespace,
    routes: [
      GoRoute(
        path: LoginScreen.route(),
        builder: (context, state) => LoginScreen(),
      ),
      // GoRoute(
      //   path: SuccessScreen.route(),
      //   builder: (context, state) => SuccessScreen(),
      // ),
      StatefulShellRoute.indexedStack(
        branches: [
          PostRoutes.branch,
          VenueRoutes.branch,
          EventRoutes.branch,
          UserRoutes.branch,
        ],
        builder: (context, state, navigationShell) {
          return AppContainer(navigationShell: navigationShell);
        },
      )
    ],
    // redirect: (context, state) {
    //   final publicRoutes = [LoginScreen.route()];
    //   if (!publicRoutes.contains(state.matchedLocation)) {
    //     return null;
    //   }

    //   final authState = ref.read(authProvider);

    //   if (authState is AuthStateGuess) {
    //     return LoginScreen.route();
    //   }
    //   return null;
    // },
  );
}
