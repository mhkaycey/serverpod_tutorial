import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:openmic_flutter/core/utils/toast_utils.dart';
import 'package:openmic_flutter/core/utils/validation_utils.dart';
import 'package:openmic_flutter/features/auth/models/auth_state.dart';
import 'package:openmic_flutter/features/auth/providers/auth_provider.dart';
import 'package:openmic_flutter/features/auth/screens/success_screen.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);

    ref.listen(authProvider, (preState, nextState) {
      // if (preState is AuthStateSuccess && nextState is AuthStateGuess) {
      //   Navigator.of(context).pushNamed('/home');
      // }
      switch (nextState) {
        case AuthStateSuccess():
          final message = nextState.user.userInfo?.userName == null
              ? "Welcome Back"
              : "Welcome back ${nextState.user.userInfo?.userName}";
          ToastUtils.show(context, message);
          context.replace(SuccessScreen.route());
          break;

        case AuthStateError():
          ToastUtils.show(context, nextState.error);
        default:
          break;
      }
    });
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Builder(
            builder: (context) {
              switch (authState) {
                case AuthStateSuccess():
                  return Text("Hello: ${authState.user.userInfo?.userName}!");
                case AuthStateGuess():
                  return Text("Hello Guess!");
                case AuthStateError():
                  return Text(
                    authState.error,
                    style: const TextStyle(color: Colors.red),
                  );
                default:
                  return Text("...");
              }
            },
          ),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(labelText: 'Email'),
            validator: ValidationUtils.formValidatorEmail,
          ),
          TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              validator: (value) =>
                  ValidationUtils.formValidatorNotEmpty(value, "Password")),
          ElevatedButton(
            onPressed: () {
              if (!formKey.currentState!.validate()) {
                return;
              } else {
                ref.read(authProvider.notifier).loginWithEmail(
                    email: emailController.text,
                    password: passwordController.text);
              }
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
