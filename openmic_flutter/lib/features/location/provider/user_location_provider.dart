import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:latlong2/latlong.dart';
import 'package:openmic_flutter/features/location/location_util.dart';
import 'package:openmic_flutter/features/location/model/user_location_state.dart';
import 'package:openmic_flutter/features/venue/provider/venue_map_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:fl_location/fl_location.dart' as fl;

part 'user_location_provider.g.dart';

@Riverpod(keepAlive: true)
class UserLocation extends _$UserLocation {
  @override
  UserLocationState build() {
    init();
    return UserLocationState(latLng: null, locationPermissionGranted: false);
  }

  StreamSubscription<fl.Location>? streamSubscription;

  Future<void> init() async {
    final enabled = await fl.FlLocation.isLocationServicesEnabled;

    if (enabled) {
      final locationPermission = await fl.FlLocation.checkLocationPermission();

      if (locationPermission == fl.LocationPermission.always ||
          locationPermission == fl.LocationPermission.whileInUse) {
        state = state.copyWith(locationPermissionGranted: true);

        final location = await fl.FlLocation.getLocation();
        log("location: $location");
        set(LatLng(location.latitude, location.longitude));
        initStream();
      }
    }
  }

  set(LatLng latlng) {
    state = state.copyWith(latLng: latlng);
  }

  initStream() async {
    if (kIsWeb && kDebugMode) return;
    if (streamSubscription != null) {
      await _cancelStreamSubscription();
    }
    streamSubscription = fl.FlLocation.getLocationStream().handleError((error) {
      log(error.toString());
    }).listen((location) {
      final latlng = LatLng(location.latitude, location.longitude);
      set(latlng);
    });
  }

  Future<void> _cancelStreamSubscription() async {
    await streamSubscription?.cancel();
    streamSubscription = null;
  }

  Future<bool> checkLocationPermission([bool prompt = true]) async {
    final enabled = await fl.FlLocation.isLocationServicesEnabled;
    if (enabled) {
      final locationPermission = await fl.FlLocation.checkLocationPermission();

      if (locationPermission == fl.LocationPermission.always ||
          locationPermission == fl.LocationPermission.whileInUse) {
        state = state.copyWith(locationPermissionGranted: true);
        final location = await fl.FlLocation.getLocation();
        log(location.toString());
        final latlng = LatLng(location.latitude, location.longitude);
        set(latlng);
        initStream();
        try {
          ref.read(venueMapProvider.notifier).moveTo(latlng);
        } catch (e, sk) {
          log(sk.toString());
        }
        return true;
      }
    }
    if (prompt) {
      final locationPermission =
          await fl.FlLocation.requestLocationPermission();
      if (locationPermission == fl.LocationPermission.always ||
          locationPermission == fl.LocationPermission.whileInUse) {
        state = state.copyWith(locationPermissionGranted: true);
        final location = await fl.FlLocation.getLocation();
        log(location.toString());
        final latlng = LatLng(location.latitude, location.longitude);
        set(latlng);
        initStream();
        try {
          ref.read(venueMapProvider.notifier).moveTo(latlng);
        } catch (e, sk) {
          log("$e, $sk");
        }
        return true;
      }
    }
    return false;
  }

  move(MapDirection direction, [double meters = 500]) {
    if (state.latLng == null) {
      return;
    }

    state = state.copyWith(
      latLng: addMetersToLatLngWithDirection(state.latLng!, direction, meters),
    );
  }

  moveNorth([double meters = 250]) {
    move(MapDirection.north, meters);
  }

  moveEast([double meters = 250]) {
    move(MapDirection.east, meters);
  }

  moveSouth([double meters = 250]) {
    move(MapDirection.south, meters);
  }

  moveWest([double meters = 250]) {
    move(MapDirection.west, meters);
  }
}
