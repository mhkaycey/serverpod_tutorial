import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/providers/bootstrap_provider.dart';
import 'features/navigation/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);
    final booting = ref.watch(bootstrapProvider);

    if (booting) {
      print("Booting... $booting");
      return MaterialApp(
        title: "Serverpod Demo",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }

    return MaterialApp.router(
      title: 'Serverpod Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,

//       Consumer(builder: (context, ref, _) {
//         if (booting) {
//           return const Scaffold(
//             body: Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         }
//         final authState = ref.watch(authProvider);
//         log(authState.toString());
//         return Scaffold(
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Builder(
//                   builder: (context) {
//                     switch (authState) {
//                       case AuthStateSuccess():
//                         return Text(
//                             "Hello: ${authState.user.userInfo?.userName}!");
//                       case AuthStateGuess():
//                         return Text("Hello Guess!");

//                       default:
//                         return Text("...");
//                     }
//                   },
//                 ),
//                 ElevatedButton(
//                   onPressed: () async {
//                     ref.read(authServiceProvider).registerWithEmail(
//                           email: "kelechimark123@gmail.com",
//                           password: "qwety123",
//                           username: "Mhkaycey",
//                         );
//                   },
//                   child: Text("Create Account"),
//                 ),
//                 ElevatedButton(
//                   onPressed: () async {
//                     ref.read(authServiceProvider).confirmEmailRegister(
//                         email: "kelechimark123@gmail.com",
//                         verificationCode: "gePVSx1l",
//                         password: "qwety123");
//                   },
//                   child: Text("Verify Account"),
//                 ),
//                 ElevatedButton(
//                   onPressed: () async {
//                     await ref.read(authProvider.notifier).loginWithEmail(
//                           email: "kelechimark123@gmail.com",
//                           password: "qwety123",
//                         );
//                   },
//                   child: Text("Login"),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     ref.read(authProvider.notifier).logout();
//                   },
//                   child: Text("Sign Out"),
//                 ),
//                 ElevatedButton(
//                   onPressed: () async {
//                     // ref.read(authProvider.notifier).updateText("Helle World");
//                   },
//                   child: Text("Update Text"),
//                 )
//               ],
//             ),
//           ),
//         );
//         // return const HomePage();
//       }),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Consumer(
//       builder: (context, ref, _) {
//         final authState = ref.watch(authProvider);
//         return Scaffold(
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Builder(
//                   builder: (context) {
//                     switch (authState) {
//                       case AuthStateSuccess():
//                         return Text(
//                             "Hello User: ${authState.user.userInfo?.userName}!");
//                       case AuthStateGuess():
//                         return Text("Hello Guess!");

//                       default:
//                         return Text("Unknown");
//                     }
//                   },
//                 ),
//                 ElevatedButton(
//                   onPressed: () async {
//                     ref.read(authServiceProvider).registerWithEmail(
//                           email: "kelechimark041@gmail.com",
//                           password: "password",
//                           username: "userName",
//                         );

//                     // ref.read(authServiceProvider).confirmEmailRegister(
//                     //       email: "kelechimark041@gmail.com",
//                     //       verificationCode: "I9e1FAH9",
//                     //     );
//                   },
//                   child: Text("Create Account"),
//                 ),
//                 ElevatedButton(
//                   onPressed: () async {
//                     final result =
//                         await ref.read(authServiceProvider).loginWithEmail(
//                               email: "kelechimark041@gmail.com",
//                               password: "password",
//                             );
//                     result.fold((error) {
//                       log(error);
//                     }, (userInfo) {
//                       log(userInfo.toString());
//                     });
//                   },
//                   child: Text("Login"),
//                 ),
//                 ElevatedButton(
//                   onPressed: () async {
//                     ref.read(authServiceProvider).signOut();
//                   },
//                   child: Text("Sign Out"),
//                 ),
//                 ElevatedButton(
//                   onPressed: () async {
//                     // ref.read(authProvider.notifier).updateText("Helle World");
//                   },
//                   child: Text("Update Text"),
//                 )
//               ],
//             ),
//           ),
//         );
//       },
    );
  }
}
