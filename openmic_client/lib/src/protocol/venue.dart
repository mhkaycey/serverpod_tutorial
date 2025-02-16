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
import 'user.dart' as _i2;
import 'hub.dart' as _i3;

abstract class Venue implements _i1.SerializableModel {
  Venue._({
    this.id,
    required this.ownerId,
    this.owner,
    required this.hubId,
    this.hub,
    required this.name,
    required this.primaryImageUrl,
    required this.bio,
    required this.shortAddress,
    required this.longAddress,
    required this.websiteUrl,
    required this.instagramUrl,
    required this.latitude,
    required this.longitude,
    required this.isVerified,
  });

  factory Venue({
    int? id,
    required int ownerId,
    _i2.User? owner,
    required int hubId,
    _i3.Hub? hub,
    required String name,
    required String primaryImageUrl,
    required String bio,
    required String shortAddress,
    required String longAddress,
    required String websiteUrl,
    required String instagramUrl,
    required double latitude,
    required double longitude,
    required bool isVerified,
  }) = _VenueImpl;

  factory Venue.fromJson(Map<String, dynamic> jsonSerialization) {
    return Venue(
      id: jsonSerialization['id'] as int?,
      ownerId: jsonSerialization['ownerId'] as int,
      owner: jsonSerialization['owner'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['owner'] as Map<String, dynamic>)),
      hubId: jsonSerialization['hubId'] as int,
      hub: jsonSerialization['hub'] == null
          ? null
          : _i3.Hub.fromJson(
              (jsonSerialization['hub'] as Map<String, dynamic>)),
      name: jsonSerialization['name'] as String,
      primaryImageUrl: jsonSerialization['primaryImageUrl'] as String,
      bio: jsonSerialization['bio'] as String,
      shortAddress: jsonSerialization['shortAddress'] as String,
      longAddress: jsonSerialization['longAddress'] as String,
      websiteUrl: jsonSerialization['websiteUrl'] as String,
      instagramUrl: jsonSerialization['instagramUrl'] as String,
      latitude: (jsonSerialization['latitude'] as num).toDouble(),
      longitude: (jsonSerialization['longitude'] as num).toDouble(),
      isVerified: jsonSerialization['isVerified'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int ownerId;

  _i2.User? owner;

  int hubId;

  _i3.Hub? hub;

  String name;

  String primaryImageUrl;

  String bio;

  String shortAddress;

  String longAddress;

  String websiteUrl;

  String instagramUrl;

  double latitude;

  double longitude;

  bool isVerified;

  Venue copyWith({
    int? id,
    int? ownerId,
    _i2.User? owner,
    int? hubId,
    _i3.Hub? hub,
    String? name,
    String? primaryImageUrl,
    String? bio,
    String? shortAddress,
    String? longAddress,
    String? websiteUrl,
    String? instagramUrl,
    double? latitude,
    double? longitude,
    bool? isVerified,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'ownerId': ownerId,
      if (owner != null) 'owner': owner?.toJson(),
      'hubId': hubId,
      if (hub != null) 'hub': hub?.toJson(),
      'name': name,
      'primaryImageUrl': primaryImageUrl,
      'bio': bio,
      'shortAddress': shortAddress,
      'longAddress': longAddress,
      'websiteUrl': websiteUrl,
      'instagramUrl': instagramUrl,
      'latitude': latitude,
      'longitude': longitude,
      'isVerified': isVerified,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _VenueImpl extends Venue {
  _VenueImpl({
    int? id,
    required int ownerId,
    _i2.User? owner,
    required int hubId,
    _i3.Hub? hub,
    required String name,
    required String primaryImageUrl,
    required String bio,
    required String shortAddress,
    required String longAddress,
    required String websiteUrl,
    required String instagramUrl,
    required double latitude,
    required double longitude,
    required bool isVerified,
  }) : super._(
          id: id,
          ownerId: ownerId,
          owner: owner,
          hubId: hubId,
          hub: hub,
          name: name,
          primaryImageUrl: primaryImageUrl,
          bio: bio,
          shortAddress: shortAddress,
          longAddress: longAddress,
          websiteUrl: websiteUrl,
          instagramUrl: instagramUrl,
          latitude: latitude,
          longitude: longitude,
          isVerified: isVerified,
        );

  @override
  Venue copyWith({
    Object? id = _Undefined,
    int? ownerId,
    Object? owner = _Undefined,
    int? hubId,
    Object? hub = _Undefined,
    String? name,
    String? primaryImageUrl,
    String? bio,
    String? shortAddress,
    String? longAddress,
    String? websiteUrl,
    String? instagramUrl,
    double? latitude,
    double? longitude,
    bool? isVerified,
  }) {
    return Venue(
      id: id is int? ? id : this.id,
      ownerId: ownerId ?? this.ownerId,
      owner: owner is _i2.User? ? owner : this.owner?.copyWith(),
      hubId: hubId ?? this.hubId,
      hub: hub is _i3.Hub? ? hub : this.hub?.copyWith(),
      name: name ?? this.name,
      primaryImageUrl: primaryImageUrl ?? this.primaryImageUrl,
      bio: bio ?? this.bio,
      shortAddress: shortAddress ?? this.shortAddress,
      longAddress: longAddress ?? this.longAddress,
      websiteUrl: websiteUrl ?? this.websiteUrl,
      instagramUrl: instagramUrl ?? this.instagramUrl,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      isVerified: isVerified ?? this.isVerified,
    );
  }
}
