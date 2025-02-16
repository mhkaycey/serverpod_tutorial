import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openmic_flutter/features/auth/components/login_form.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  static String route() => "/login";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: LoginForm(),
            ),
          ),
        ),
      ),
    );
  }
}
