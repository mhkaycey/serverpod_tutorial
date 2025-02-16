import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:openmic_client/openmic_client.dart';

final clientProvider = Provider<Client>(
  (ref) {
    return Client(
      "http://${Platform.isAndroid ? "10.0.2.2" : "localhost"}:8080/",
      // "http://localhost:8080/",
      authenticationKeyManager: FlutterAuthenticationKeyManager(),
    )..connectivityMonitor = FlutterConnectivityMonitor();
  },
);
