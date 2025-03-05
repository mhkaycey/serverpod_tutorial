import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openmic_flutter/core/providers/client_provider.dart';
import 'package:openmic_flutter/features/asset/services/asset_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'asset_service_provider.g.dart';

@riverpod
AssetService assetService(Ref ref) {
  return AssetService(ref.read(clientProvider));
}
