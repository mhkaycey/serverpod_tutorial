import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:openmic_client/openmic_client.dart';

class UserService {
  final Client client;

  const UserService(this.client);

  Future<Either<String, User?>> me() async {
    try {
      final user = await client.user.me();
      if (user == null) {
        return right(null);
      }
      log(user.toString());
      return right(user);
    } catch (e, sk) {
      log(e.toString());
      log(sk.toString());
      return left(e.toString());
    }
  }
}
