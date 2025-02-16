// ignore_for_file: avoid_manual_providers_as_generated_provider_dependency

import 'dart:developer';

import 'package:openmic_flutter/core/providers/session_manager.dart';
import 'package:openmic_flutter/features/auth/models/auth_state.dart';
import 'package:openmic_flutter/features/auth/providers/auth_service_provider.dart';
import 'package:openmic_flutter/features/user/providers/auth_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  AuthState build() {
    return AuthStateBooting();
  }

  Future<void> init() async {
    // Add initialization code here

    await ref.read(sessionManagerProvider).initialize();
    final userInfoResult = ref.read(authServiceProvider).currentUser();

    userInfoResult.fold((error) {
      state = AuthStateError(error: error);
    }, (userInfo) async {
      if (userInfo != null) {
        final userResult = await ref.read(userServiceProvider).me();
        userResult.fold((error) {
          state = AuthStateError(error: error);
          log(error);
        }, (user) {
          if (user == null) {
            state = AuthStateGuess();
          } else {
            state = AuthStateSuccess(user: user);
            log(user.toString());
            log(state.toString());
          }
        });
      } else {
        state = AuthStateGuess();
      }
    });
  }

  Future<void> loginWithEmail({
    required String email,
    required String password,
  }) async {
    final result = await ref
        .read(authServiceProvider)
        .loginWithEmail(email: email, password: password);
    result.fold((error) {
      state = AuthStateError(error: error);
    }, (userInfo) async {
      final userResult = await ref.read(userServiceProvider).me();
      userResult.fold((error) {
        state = AuthStateError(error: error);
        log(error);
      }, (user) {
        if (user == null) {
          state = AuthStateGuess();
        } else {
          state = AuthStateSuccess(user: user);
          log(user.toString());
          log(state.toString());
        }
      });
    });
  }

  Future<void> logout() async {
    final result = await ref.read(authServiceProvider).signOut();
    result.fold((error) {
      state = AuthStateError(error: error);
    }, (userInfo) {
      state = AuthStateGuess();
    });
  }
}
