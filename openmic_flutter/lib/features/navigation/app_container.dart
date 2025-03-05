import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppContainer extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const AppContainer({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Expanded(
          child: navigationShell,
        ),
        NavigationBar(
          height: size.height * 0.06,
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: (index) {
            navigationShell.goBranch(index,
                initialLocation: index == navigationShell.currentIndex);
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.star), label: 'Feed'),
            NavigationDestination(icon: Icon(Icons.star), label: 'Explore'),
            NavigationDestination(icon: Icon(Icons.star), label: 'Events'),
            NavigationDestination(icon: Icon(Icons.star), label: 'Profile'),
          ],
        ),
      ],
    );
  }
}
