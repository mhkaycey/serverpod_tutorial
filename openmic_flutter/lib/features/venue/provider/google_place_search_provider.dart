import 'dart:developer';

import 'package:openmic_client/openmic_client.dart';
import 'package:openmic_flutter/features/venue/provider/venue_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'google_place_search_provider.g.dart';

@riverpod
class GooglePlaceSearch extends _$GooglePlaceSearch {
  @override
  List<GooglePlace> build() {
    return [];
  }

  Future<void> search(String query) async {
    final result = await ref.read(venueServiceProvider).searchForPlace(query);

    result.fold((error) {
      log(error);
      state = [];
    }, (place) {
      state = place;
    });
  }

  void clear() {
    state = [];
  }
}
