import 'dart:developer';

import 'package:flutter_map/flutter_map.dart';
import 'package:openmic_client/openmic_client.dart';
import 'package:openmic_flutter/features/location/provider/user_location_provider.dart';
import 'package:openmic_flutter/features/venue/provider/venue_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'venue_map_provider.g.dart';

@Riverpod(keepAlive: true)
class VenueMap extends _$VenueMap {
  @override
  List<Venue> build() {
    return [];
  }

  final MapController mapController = MapController();

  handleMapReady() {
    fetchVenues();
  }

  moveTo(LatLng point, [double? zoom]) {
    mapController.move(point, zoom ?? mapController.camera.zoom);
  }

  findMe() async {
    log("Clicked find me");

    if (!ref.read(userLocationProvider).locationPermissionGranted) {
      await ref
          .read(userLocationProvider.notifier)
          .checkLocationPermission(true);
    }

    final location = ref.read(userLocationProvider).latLng;
    log(location.toString());
    if (location != null) {
      moveTo(location);
    }
  }

  Future<void> fetchVenues() async {
    final result = await ref.read(venueServiceProvider).map(1);

    result.fold((error) {
      // state = state.failure(error);
      log(error);
    }, (venues) {
      state = venues;
    });
  }

  handleMapEvent(MapEvent event) {}
}
