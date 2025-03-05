/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class GooglePlace implements _i1.SerializableModel {
  GooglePlace._({
    required this.placeId,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.address,
  });

  factory GooglePlace({
    required String placeId,
    required String name,
    required double latitude,
    required double longitude,
    required String address,
  }) = _GooglePlaceImpl;

  factory GooglePlace.fromJson(Map<String, dynamic> jsonSerialization) {
    return GooglePlace(
      placeId: jsonSerialization['placeId'] as String,
      name: jsonSerialization['name'] as String,
      latitude: (jsonSerialization['latitude'] as num).toDouble(),
      longitude: (jsonSerialization['longitude'] as num).toDouble(),
      address: jsonSerialization['address'] as String,
    );
  }

  String placeId;

  String name;

  double latitude;

  double longitude;

  String address;

  GooglePlace copyWith({
    String? placeId,
    String? name,
    double? latitude,
    double? longitude,
    String? address,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'placeId': placeId,
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
      'address': address,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _GooglePlaceImpl extends GooglePlace {
  _GooglePlaceImpl({
    required String placeId,
    required String name,
    required double latitude,
    required double longitude,
    required String address,
  }) : super._(
          placeId: placeId,
          name: name,
          latitude: latitude,
          longitude: longitude,
          address: address,
        );

  @override
  GooglePlace copyWith({
    String? placeId,
    String? name,
    double? latitude,
    double? longitude,
    String? address,
  }) {
    return GooglePlace(
      placeId: placeId ?? this.placeId,
      name: name ?? this.name,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      address: address ?? this.address,
    );
  }
}
