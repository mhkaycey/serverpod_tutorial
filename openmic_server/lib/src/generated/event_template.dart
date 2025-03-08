/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'user.dart' as _i2;
import 'venue.dart' as _i3;
import 'day_of_the_week.dart' as _i4;

abstract class EventTemplate
    implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = EventTemplateTable();

  static const db = EventTemplateRepository._();

  @override
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

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'ownerId': ownerId,
      if (owner != null) 'owner': owner?.toJsonForProtocol(),
      'venueId': venueId,
      if (venue != null) 'venue': venue?.toJsonForProtocol(),
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

  static EventTemplateInclude include({
    _i2.UserInclude? owner,
    _i3.VenueInclude? venue,
  }) {
    return EventTemplateInclude._(
      owner: owner,
      venue: venue,
    );
  }

  static EventTemplateIncludeList includeList({
    _i1.WhereExpressionBuilder<EventTemplateTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventTemplateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTemplateTable>? orderByList,
    EventTemplateInclude? include,
  }) {
    return EventTemplateIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(EventTemplate.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(EventTemplate.t),
      include: include,
    );
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

class EventTemplateTable extends _i1.Table {
  EventTemplateTable({super.tableRelation})
      : super(tableName: 'event_template') {
    ownerId = _i1.ColumnInt(
      'ownerId',
      this,
    );
    venueId = _i1.ColumnInt(
      'venueId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    startsOn = _i1.ColumnDateTime(
      'startsOn',
      this,
    );
    repeats = _i1.ColumnBool(
      'repeats',
      this,
    );
    dayOfWeek = _i1.ColumnEnum(
      'dayOfWeek',
      this,
      _i1.EnumSerialization.byIndex,
    );
    primaryImageUrl = _i1.ColumnString(
      'primaryImageUrl',
      this,
    );
    forMusic = _i1.ColumnBool(
      'forMusic',
      this,
    );
    forComedy = _i1.ColumnBool(
      'forComedy',
      this,
    );
    forPoetry = _i1.ColumnBool(
      'forPoetry',
      this,
    );
  }

  late final _i1.ColumnInt ownerId;

  _i2.UserTable? _owner;

  late final _i1.ColumnInt venueId;

  _i3.VenueTable? _venue;

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnDateTime startsOn;

  late final _i1.ColumnBool repeats;

  late final _i1.ColumnEnum<_i4.DayOfTheWeek> dayOfWeek;

  late final _i1.ColumnString primaryImageUrl;

  late final _i1.ColumnBool forMusic;

  late final _i1.ColumnBool forComedy;

  late final _i1.ColumnBool forPoetry;

  _i2.UserTable get owner {
    if (_owner != null) return _owner!;
    _owner = _i1.createRelationTable(
      relationFieldName: 'owner',
      field: EventTemplate.t.ownerId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _owner!;
  }

  _i3.VenueTable get venue {
    if (_venue != null) return _venue!;
    _venue = _i1.createRelationTable(
      relationFieldName: 'venue',
      field: EventTemplate.t.venueId,
      foreignField: _i3.Venue.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.VenueTable(tableRelation: foreignTableRelation),
    );
    return _venue!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        ownerId,
        venueId,
        name,
        description,
        startsOn,
        repeats,
        dayOfWeek,
        primaryImageUrl,
        forMusic,
        forComedy,
        forPoetry,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'owner') {
      return owner;
    }
    if (relationField == 'venue') {
      return venue;
    }
    return null;
  }
}

class EventTemplateInclude extends _i1.IncludeObject {
  EventTemplateInclude._({
    _i2.UserInclude? owner,
    _i3.VenueInclude? venue,
  }) {
    _owner = owner;
    _venue = venue;
  }

  _i2.UserInclude? _owner;

  _i3.VenueInclude? _venue;

  @override
  Map<String, _i1.Include?> get includes => {
        'owner': _owner,
        'venue': _venue,
      };

  @override
  _i1.Table get table => EventTemplate.t;
}

class EventTemplateIncludeList extends _i1.IncludeList {
  EventTemplateIncludeList._({
    _i1.WhereExpressionBuilder<EventTemplateTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(EventTemplate.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => EventTemplate.t;
}

class EventTemplateRepository {
  const EventTemplateRepository._();

  final attachRow = const EventTemplateAttachRowRepository._();

  /// Returns a list of [EventTemplate]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<EventTemplate>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTemplateTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventTemplateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTemplateTable>? orderByList,
    _i1.Transaction? transaction,
    EventTemplateInclude? include,
  }) async {
    return session.db.find<EventTemplate>(
      where: where?.call(EventTemplate.t),
      orderBy: orderBy?.call(EventTemplate.t),
      orderByList: orderByList?.call(EventTemplate.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [EventTemplate] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<EventTemplate?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTemplateTable>? where,
    int? offset,
    _i1.OrderByBuilder<EventTemplateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTemplateTable>? orderByList,
    _i1.Transaction? transaction,
    EventTemplateInclude? include,
  }) async {
    return session.db.findFirstRow<EventTemplate>(
      where: where?.call(EventTemplate.t),
      orderBy: orderBy?.call(EventTemplate.t),
      orderByList: orderByList?.call(EventTemplate.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [EventTemplate] by its [id] or null if no such row exists.
  Future<EventTemplate?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    EventTemplateInclude? include,
  }) async {
    return session.db.findById<EventTemplate>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [EventTemplate]s in the list and returns the inserted rows.
  ///
  /// The returned [EventTemplate]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<EventTemplate>> insert(
    _i1.Session session,
    List<EventTemplate> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<EventTemplate>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [EventTemplate] and returns the inserted row.
  ///
  /// The returned [EventTemplate] will have its `id` field set.
  Future<EventTemplate> insertRow(
    _i1.Session session,
    EventTemplate row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<EventTemplate>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [EventTemplate]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<EventTemplate>> update(
    _i1.Session session,
    List<EventTemplate> rows, {
    _i1.ColumnSelections<EventTemplateTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<EventTemplate>(
      rows,
      columns: columns?.call(EventTemplate.t),
      transaction: transaction,
    );
  }

  /// Updates a single [EventTemplate]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<EventTemplate> updateRow(
    _i1.Session session,
    EventTemplate row, {
    _i1.ColumnSelections<EventTemplateTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<EventTemplate>(
      row,
      columns: columns?.call(EventTemplate.t),
      transaction: transaction,
    );
  }

  /// Deletes all [EventTemplate]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<EventTemplate>> delete(
    _i1.Session session,
    List<EventTemplate> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<EventTemplate>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [EventTemplate].
  Future<EventTemplate> deleteRow(
    _i1.Session session,
    EventTemplate row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<EventTemplate>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<EventTemplate>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventTemplateTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<EventTemplate>(
      where: where(EventTemplate.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTemplateTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<EventTemplate>(
      where: where?.call(EventTemplate.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class EventTemplateAttachRowRepository {
  const EventTemplateAttachRowRepository._();

  /// Creates a relation between the given [EventTemplate] and [User]
  /// by setting the [EventTemplate]'s foreign key `ownerId` to refer to the [User].
  Future<void> owner(
    _i1.Session session,
    EventTemplate eventTemplate,
    _i2.User owner, {
    _i1.Transaction? transaction,
  }) async {
    if (eventTemplate.id == null) {
      throw ArgumentError.notNull('eventTemplate.id');
    }
    if (owner.id == null) {
      throw ArgumentError.notNull('owner.id');
    }

    var $eventTemplate = eventTemplate.copyWith(ownerId: owner.id);
    await session.db.updateRow<EventTemplate>(
      $eventTemplate,
      columns: [EventTemplate.t.ownerId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [EventTemplate] and [Venue]
  /// by setting the [EventTemplate]'s foreign key `venueId` to refer to the [Venue].
  Future<void> venue(
    _i1.Session session,
    EventTemplate eventTemplate,
    _i3.Venue venue, {
    _i1.Transaction? transaction,
  }) async {
    if (eventTemplate.id == null) {
      throw ArgumentError.notNull('eventTemplate.id');
    }
    if (venue.id == null) {
      throw ArgumentError.notNull('venue.id');
    }

    var $eventTemplate = eventTemplate.copyWith(venueId: venue.id);
    await session.db.updateRow<EventTemplate>(
      $eventTemplate,
      columns: [EventTemplate.t.venueId],
      transaction: transaction,
    );
  }
}
