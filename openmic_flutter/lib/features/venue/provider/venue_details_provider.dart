import 'dart:developer';

import 'package:openmic_client/openmic_client.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openmic_flutter/features/auth/models/auth_state.dart';
import 'package:openmic_flutter/features/auth/providers/auth_provider.dart';
import 'package:openmic_flutter/features/venue/provider/venue_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'venue_details_provider.g.dart';

@riverpod
Future<Venue?> venueDetail(Ref ref, int id) async {
  if (id == 0) {
    final authState = ref.read(authProvider);
    if (authState is AuthStateSuccess) {
      if (authState.user.id != null) {
        return Venue(
          ownerId: authState.user.id!,
          hubId: 1,
          name: '',
          primaryImageUrl: '',
          bio: '',
          address: '',
          websiteUrl: '',
          instagramUrl: '',
          latitude: 0,
          longitude: 0,
          isVerified: false,
        );
      }
    }
  }

  final result = await ref.read(venueServiceProvider).retrieve(id);

  return result.fold((error) {
    log(error);
    return null;
  }, (venue) {
    return venue;
  });
}
