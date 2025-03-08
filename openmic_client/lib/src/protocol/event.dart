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
import 'event_template.dart' as _i2;

abstract class Event implements _i1.SerializableModel {
  Event._({
    this.id,
    required this.templateId,
    this.template,
    required this.startsOn,
    this.description,
    required this.forMusic,
    required this.forComedy,
    required this.forPoetry,
  });

  factory Event({
    int? id,
    required int templateId,
    _i2.EventTemplate? template,
    required DateTime startsOn,
    String? description,
    required bool forMusic,
    required bool forComedy,
    required bool forPoetry,
  }) = _EventImpl;

  factory Event.fromJson(Map<String, dynamic> jsonSerialization) {
    return Event(
      id: jsonSerialization['id'] as int?,
      templateId: jsonSerialization['templateId'] as int,
      template: jsonSerialization['template'] == null
          ? null
          : _i2.EventTemplate.fromJson(
              (jsonSerialization['template'] as Map<String, dynamic>)),
      startsOn:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['startsOn']),
      description: jsonSerialization['description'] as String?,
      forMusic: jsonSerialization['forMusic'] as bool,
      forComedy: jsonSerialization['forComedy'] as bool,
      forPoetry: jsonSerialization['forPoetry'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int templateId;

  _i2.EventTemplate? template;

  DateTime startsOn;

  String? description;

  bool forMusic;

  bool forComedy;

  bool forPoetry;

  /// Returns a shallow copy of this [Event]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Event copyWith({
    int? id,
    int? templateId,
    _i2.EventTemplate? template,
    DateTime? startsOn,
    String? description,
    bool? forMusic,
    bool? forComedy,
    bool? forPoetry,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'templateId': templateId,
      if (template != null) 'template': template?.toJson(),
      'startsOn': startsOn.toJson(),
      if (description != null) 'description': description,
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

class _EventImpl extends Event {
  _EventImpl({
    int? id,
    required int templateId,
    _i2.EventTemplate? template,
    required DateTime startsOn,
    String? description,
    required bool forMusic,
    required bool forComedy,
    required bool forPoetry,
  }) : super._(
          id: id,
          templateId: templateId,
          template: template,
          startsOn: startsOn,
          description: description,
          forMusic: forMusic,
          forComedy: forComedy,
          forPoetry: forPoetry,
        );

  /// Returns a shallow copy of this [Event]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Event copyWith({
    Object? id = _Undefined,
    int? templateId,
    Object? template = _Undefined,
    DateTime? startsOn,
    Object? description = _Undefined,
    bool? forMusic,
    bool? forComedy,
    bool? forPoetry,
  }) {
    return Event(
      id: id is int? ? id : this.id,
      templateId: templateId ?? this.templateId,
      template:
          template is _i2.EventTemplate? ? template : this.template?.copyWith(),
      startsOn: startsOn ?? this.startsOn,
      description: description is String? ? description : this.description,
      forMusic: forMusic ?? this.forMusic,
      forComedy: forComedy ?? this.forComedy,
      forPoetry: forPoetry ?? this.forPoetry,
    );
  }
}
