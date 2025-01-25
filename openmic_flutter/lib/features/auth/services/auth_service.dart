import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';

import 'package:openmic_client/openmic_client.dart';
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as auth;

class AuthService {
  final Client client;
  final SessionManager sessionManager;

  const AuthService(this.client, this.sessionManager);

  Either<String, auth.UserInfo?> currentUser() {
    try {
      return right(sessionManager.signedInUser);
    } catch (e, st) {
      log('Error getting current user: $e');
      log('Stack trace: $st');
      return left('Failed to retrieve the current user.');
    }
  }

  Future<Either<String, auth.UserInfo>> loginWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final result =
          await client.modules.auth.email.authenticate(email, password);

      if (!result.success) {
        return left('Incorrect email or password.');
      }

      if (result.userInfo == null) {
        return left(
            'User information could not be retrieved. Please try again later.');
      }

      if (result.keyId == null || result.key == null) {
        return left('Authentication key missing. Contact support.');
      }

      await sessionManager.registerSignedInUser(
        result.userInfo!,
        result.keyId!,
        result.key!,
      );
      return right(result.userInfo!);
    } catch (e, st) {
      log('Error during login: $e');
      log('Stack trace: $st');
      return left(
          'An unexpected error occurred during login. Please try again.');
    }
  }

  Future<Either<String, void>> registerWithEmail({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      log('Attempting to create account: email=$email, username=$username');
      final result = await client.modules.auth.email.createAccountRequest(
        username,
        email,
        password,
      );

      if (!result) {
        log('Account creation request failed for email=$email');
        return left(
            'Registration failed. Please ensure your email is valid and not already in use.');
      }
      log('Account creation request succeeded for email=$email');
      return right(null);
    } catch (e, st) {
      log('Error during registration: $e');
      log('Stack trace: $st');
      return left(
          'An unexpected error occurred during registration. Please try again later.');
    }
  }

  Future<Either<String, auth.UserInfo>> confirmEmailRegister({
    required String email,
    required String verificationCode,
    required String password,
  }) async {
    try {
      final result = await client.modules.auth.email.createAccount(
        email,
        verificationCode,
      );

      if (result == null) {
        return left(
            'Email verification failed. Ensure the code is correct and try again.');
      }

      return await loginWithEmail(email: email, password: password);
    } catch (e, st) {
      log('Error during email confirmation: $e');
      log('Stack trace: $st');
      return left(
          'An unexpected error occurred during email verification. Please try again.');
    }
  }

  Future<Either<String, void>> signOut() async {
    try {
      await sessionManager.signOutDevice();
      return right(null);
    } catch (e, st) {
      log('Error during sign-out: $e');
      log('Stack trace: $st');
      return left(
          'An unexpected error occurred while signing out. Please try again.');
    }
  }
}
