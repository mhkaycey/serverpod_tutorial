import 'package:openmic_flutter/core/providers/client_provider.dart';
import 'package:openmic_flutter/features/user/services/user_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final userServiceProvider = Provider<UserService>(
  (ref) {
    return UserService(ref.watch(clientProvider));
  },
);
