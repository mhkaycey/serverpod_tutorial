import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openmic_flutter/features/auth/providers/auth_service_provider.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return Scaffold(
            body: Center(
          child: ElevatedButton(
            onPressed: () {
              ref.read(authServiceProvider).registerWithEmail(
                    email: "kelechimark041@gmail.com",
                    password: "password",
                    userName: "userName",
                  );

              // ref.read(authServiceProvider).confirmEmailRegister(
              //       email: "kelechimark041@gmail.com",
              //       verificationCode: "verificationCode",
              //     );
            },
            child: Text("Create Account"),
          ),
        ));
      },
    );
  }
}
