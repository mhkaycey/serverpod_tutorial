import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';

import 'package:openmic_client/openmic_client.dart';
import 'package:serverpod_auth_client/serverpod_auth_client.dart';

class AuthService {
  final Client client;
  final SessionManager sessionManager;

  const AuthService(this.client, this.sessionManager);

  Future<Either<String, void>> registerWithEmail({
    required String email,
    required String password,
    required String userName,
  }) async {
    final result = await client.modules.auth.email.createAccountRequest(
      userName,
      email,
      password,
    );

    log("Result: $result");

    try {
      if (!result) {
        return left("Could not create account");
      }
      return right(null);
    } catch (e, st) {
      log(e.toString());
      log(st.toString());
      return left(e.toString());
    }
  }

  Future<Either<String, UserInfo>> confirmEmailRegister({
    required String email,
    required String verificationCode,
  }) async {
    final result = await client.modules.auth.email.createAccount(
      email,
      verificationCode,
    );
    log("Result: $result");

    try {
      if (result == null) {
        return left("Could not create account");
      }
      return right(result);
    } catch (e, st) {
      log(e.toString());
      log(st.toString());
      return left(e.toString());
    }
  }
}
