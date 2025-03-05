import 'package:latlong2/latlong.dart';

class UserLocationState {
  final LatLng? latLng;
  final bool locationPermissionGranted;

  const UserLocationState({
    this.latLng,
    this.locationPermissionGranted = false,
  });

  UserLocationState copyWith({
    LatLng? latLng,
    bool? locationPermissionGranted,
  }) {
    return UserLocationState(
      latLng: latLng ?? this.latLng,
      locationPermissionGranted:
          locationPermissionGranted ?? this.locationPermissionGranted,
    );
  }
}
