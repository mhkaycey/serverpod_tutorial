import 'dart:math';

import 'package:latlong2/latlong.dart';

const double earthRadiusMeters = 6371000.0;
const double earthRadiusKm = 6371.0;

enum MapDirection {
  north(0),
  east(90),
  south(180),
  west(270);

  const MapDirection(this.degrees);
  final double degrees;
}

double degreesToRadians(double degrees) {
  return degrees * (pi / 180.0);
}

double radiansToDegrees(double radians) {
  return radians * (180.0 / pi);
}

double calculateDistanceInMeters(LatLng coords1, LatLng coords2) {
  final double lat1Rad = degreesToRadians(coords1.latitude);
  final double lon1Rad = degreesToRadians(coords1.longitude);
  final double lat2Rad = degreesToRadians(coords2.latitude);
  final double lon2Rad = degreesToRadians(coords2.longitude);

  final double dLat = lat2Rad - lat1Rad;
  final double dLon = lon2Rad - lon1Rad;
  final double a = sin(dLat / 2) * sin(dLat / 2) +
      cos(lat1Rad) * cos(lat2Rad) * sin(dLon / 2) * sin(dLon / 2);
  final double c = 2 * atan2(sqrt(a), sqrt(1 - a));
  final double distance = earthRadiusMeters * c;

  return distance;
}

bool isWithinDistance(
  LatLng coords1,
  LatLng coords2,
  double maxDistance,
) {
  final double distance = calculateDistanceInMeters(coords1, coords2);
  return distance <= maxDistance;
}

extension HumanizeDistance on num {
  String humanizeDistance({int precision = 2, bool useImperial = false}) {
    final double meters = toDouble();

    if (useImperial) {
      final double feet = meters * 3.28084;

      if (feet < 5280) {
        return '${feet.toStringAsFixed(precision)} ft';
      } else {
        final double miles = feet / 5280;
        return '${miles.toStringAsFixed(precision)} mi';
      }
    } else {
      if (meters < 1000) {
        return '${meters.toStringAsFixed(precision)} m';
      } else {
        final double kilometers = meters / 1000;
        return '${kilometers.toStringAsFixed(precision)} km';
      }
    }
  }
}

LatLng addMetersToLatLngWithDirection(
  LatLng originalLatLng,
  MapDirection direction,
  double metersToAdd,
) {
  return const Distance()
      .offset(originalLatLng, metersToAdd, direction.degrees);
}
