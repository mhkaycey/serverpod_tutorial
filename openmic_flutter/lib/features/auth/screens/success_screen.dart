import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openmic_flutter/features/auth/providers/auth_provider.dart';

class SuccessScreen extends ConsumerWidget {
  const SuccessScreen({super.key});

  static String route() => "/success";

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome Back"),
            ElevatedButton(
              onPressed: () => ref.read(authProvider.notifier).logout(),
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
