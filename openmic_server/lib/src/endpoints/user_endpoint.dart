import 'dart:developer';

import 'package:openmic_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

class UserEndpoint extends Endpoint {
  Future<User?> me(Session session) async {
    final authenicationInfo = await session.authenticated;

    if (authenicationInfo == null) {
      return null;
    }
    final user = await User.db.findFirstRow(
      session,
      where: (row) => row.userInfoId.equals(authenicationInfo.userId),
      include: User.include(userInfo: UserInfo.include()),
    );
    log(user.toString());
    return user;
  }
}
