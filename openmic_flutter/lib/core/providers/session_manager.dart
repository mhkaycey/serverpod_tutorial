import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openmic_flutter/core/providers/client_provider.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';

final sessionManagerProvider = Provider<SessionManager>(
  (ref) {
    return SessionManager(caller: ref.watch(clientProvider).modules.auth);
  },
);
