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

abstract class Hub implements _i1.SerializableModel {
  Hub._({
    this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  factory Hub({
    int? id,
    required String name,
    required double latitude,
    required double longitude,
  }) = _HubImpl;

  factory Hub.fromJson(Map<String, dynamic> jsonSerialization) {
    return Hub(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      latitude: (jsonSerialization['latitude'] as num).toDouble(),
      longitude: (jsonSerialization['longitude'] as num).toDouble(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  double latitude;

  double longitude;

  Hub copyWith({
    int? id,
    String? name,
    double? latitude,
    double? longitude,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _HubImpl extends Hub {
  _HubImpl({
    int? id,
    required String name,
    required double latitude,
    required double longitude,
  }) : super._(
          id: id,
          name: name,
          latitude: latitude,
          longitude: longitude,
        );

  @override
  Hub copyWith({
    Object? id = _Undefined,
    String? name,
    double? latitude,
    double? longitude,
  }) {
    return Hub(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}
