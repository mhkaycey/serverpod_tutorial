import 'package:openmic_flutter/features/auth/providers/auth_provider.dart';
import 'package:openmic_flutter/features/location/provider/user_location_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bootstrap_provider.g.dart';

@Riverpod(keepAlive: true)
class Bootstrap extends _$Bootstrap {
  @override
  bool build() {
    bootsrapApp();
    return true;
  }

  Future<void> bootsrapApp() async {
    await ref.read(authProvider.notifier).init();
    await ref.read(userLocationProvider.notifier).init();

    state = false;
  }
}
