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
import 'venue.dart' as _i3;
import 'day_of_the_week.dart' as _i4;

abstract class EventTemplate implements _i1.SerializableModel {
  EventTemplate._({
    this.id,
    required this.ownerId,
    this.owner,
    required this.venueId,
    this.venue,
    required this.name,
    required this.description,
    required this.startsOn,
    required this.repeats,
    required this.dayOfWeek,
    required this.primaryImageUrl,
    required this.forMusic,
    required this.forComedy,
    required this.forPoetry,
  });

  factory EventTemplate({
    int? id,
    required int ownerId,
    _i2.User? owner,
    required int venueId,
    _i3.Venue? venue,
    required String name,
    required String description,
    required DateTime startsOn,
    required bool repeats,
    required _i4.DayOfTheWeek dayOfWeek,
    required String primaryImageUrl,
    required bool forMusic,
    required bool forComedy,
    required bool forPoetry,
  }) = _EventTemplateImpl;

  factory EventTemplate.fromJson(Map<String, dynamic> jsonSerialization) {
    return EventTemplate(
      id: jsonSerialization['id'] as int?,
      ownerId: jsonSerialization['ownerId'] as int,
      owner: jsonSerialization['owner'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['owner'] as Map<String, dynamic>)),
      venueId: jsonSerialization['venueId'] as int,
      venue: jsonSerialization['venue'] == null
          ? null
          : _i3.Venue.fromJson(
              (jsonSerialization['venue'] as Map<String, dynamic>)),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String,
      startsOn:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['startsOn']),
      repeats: jsonSerialization['repeats'] as bool,
      dayOfWeek:
          _i4.DayOfTheWeek.fromJson((jsonSerialization['dayOfWeek'] as int)),
      primaryImageUrl: jsonSerialization['primaryImageUrl'] as String,
      forMusic: jsonSerialization['forMusic'] as bool,
      forComedy: jsonSerialization['forComedy'] as bool,
      forPoetry: jsonSerialization['forPoetry'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int ownerId;

  _i2.User? owner;

  int venueId;

  _i3.Venue? venue;

  String name;

  String description;

  DateTime startsOn;

  bool repeats;

  _i4.DayOfTheWeek dayOfWeek;

  String primaryImageUrl;

  bool forMusic;

  bool forComedy;

  bool forPoetry;

  /// Returns a shallow copy of this [EventTemplate]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  EventTemplate copyWith({
    int? id,
    int? ownerId,
    _i2.User? owner,
    int? venueId,
    _i3.Venue? venue,
    String? name,
    String? description,
    DateTime? startsOn,
    bool? repeats,
    _i4.DayOfTheWeek? dayOfWeek,
    String? primaryImageUrl,
    bool? forMusic,
    bool? forComedy,
    bool? forPoetry,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'ownerId': ownerId,
      if (owner != null) 'owner': owner?.toJson(),
      'venueId': venueId,
      if (venue != null) 'venue': venue?.toJson(),
      'name': name,
      'description': description,
      'startsOn': startsOn.toJson(),
      'repeats': repeats,
      'dayOfWeek': dayOfWeek.toJson(),
      'primaryImageUrl': primaryImageUrl,
      'forMusic': forMusic,
      'forComedy': forComedy,
      'forPoetry': forPoetry,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _EventTemplateImpl extends EventTemplate {
  _EventTemplateImpl({
    int? id,
    required int ownerId,
    _i2.User? owner,
    required int venueId,
    _i3.Venue? venue,
    required String name,
    required String description,
    required DateTime startsOn,
    required bool repeats,
    required _i4.DayOfTheWeek dayOfWeek,
    required String primaryImageUrl,
    required bool forMusic,
    required bool forComedy,
    required bool forPoetry,
  }) : super._(
          id: id,
          ownerId: ownerId,
          owner: owner,
          venueId: venueId,
          venue: venue,
          name: name,
          description: description,
          startsOn: startsOn,
          repeats: repeats,
          dayOfWeek: dayOfWeek,
          primaryImageUrl: primaryImageUrl,
          forMusic: forMusic,
          forComedy: forComedy,
          forPoetry: forPoetry,
        );

  /// Returns a shallow copy of this [EventTemplate]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  EventTemplate copyWith({
    Object? id = _Undefined,
    int? ownerId,
    Object? owner = _Undefined,
    int? venueId,
    Object? venue = _Undefined,
    String? name,
    String? description,
    DateTime? startsOn,
    bool? repeats,
    _i4.DayOfTheWeek? dayOfWeek,
    String? primaryImageUrl,
    bool? forMusic,
    bool? forComedy,
    bool? forPoetry,
  }) {
    return EventTemplate(
      id: id is int? ? id : this.id,
      ownerId: ownerId ?? this.ownerId,
      owner: owner is _i2.User? ? owner : this.owner?.copyWith(),
      venueId: venueId ?? this.venueId,
      venue: venue is _i3.Venue? ? venue : this.venue?.copyWith(),
      name: name ?? this.name,
      description: description ?? this.description,
      startsOn: startsOn ?? this.startsOn,
      repeats: repeats ?? this.repeats,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      primaryImageUrl: primaryImageUrl ?? this.primaryImageUrl,
      forMusic: forMusic ?? this.forMusic,
      forComedy: forComedy ?? this.forComedy,
      forPoetry: forPoetry ?? this.forPoetry,
    );
  }
}
