import 'dart:developer';

import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as auth;
import 'package:serverpod_cloud_storage_gcp/serverpod_cloud_storage_gcp.dart'
    as gcp;
import 'package:openmic_server/src/web/routes/root.dart';

import 'src/generated/protocol.dart';
import 'src/generated/endpoints.dart';

// This is the starting point of your Serverpod server. In most cases, you will
// only need to make additions to this file if you add future calls,  are
// configuring Relic (Serverpod's web-server), or need custom setup work.

void run(List<String> args) async {
  log("Server starting...");
  // Initialize Serverpod and connect it with your generated code.
  final pod = Serverpod(
    args,
    Protocol(),
    Endpoints(),
    authenticationHandler: auth.authenticationHandler,
  );

  // If you are using any future calls, they need to be registered here.
  // pod.registerFutureCall(ExampleFutureCall(), 'exampleFutureCall');

  // Setup a default page at the web root.
  pod.webServer.addRoute(RouteRoot(), '/');
  pod.webServer.addRoute(RouteRoot(), '/index.html');
  // Serve all files in the /static directory.
  pod.webServer.addRoute(
    RouteStaticDirectory(serverDirectory: 'static', basePath: '/'),
    '/*',
  );

  auth.AuthConfig.set(
    auth.AuthConfig(
      sendValidationEmail: (session, email, validationCode) async {
        print("Registration CODE: $validationCode");
        return true;
      },
      sendPasswordResetEmail: (session, email, validationCode) async {
        print("Reset CODE: $validationCode");
        return true;
      },
      onUserCreated: (session, userInfo) async {
        if (userInfo.id != null) {
          final user = User(userInfoId: userInfo.id!, bio: '');
          await User.db.insertRow(session, user);
        }
      },
    ),
  );

  pod.addCloudStorage(
    gcp.GoogleCloudStorage(
      serverpod: pod,
      storageId: 'public',
      region: 'auto',
      public: true,
      bucket: 'openmic-develop',
    ),
  );
  await pod.start();
}
