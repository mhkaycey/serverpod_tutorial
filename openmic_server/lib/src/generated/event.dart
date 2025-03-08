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
import 'event_template.dart' as _i2;

abstract class Event implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = EventTable();

  static const db = EventRepository._();

  @override
  int? id;

  int templateId;

  _i2.EventTemplate? template;

  DateTime startsOn;

  String? description;

  bool forMusic;

  bool forComedy;

  bool forPoetry;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'templateId': templateId,
      if (template != null) 'template': template?.toJsonForProtocol(),
      'startsOn': startsOn.toJson(),
      if (description != null) 'description': description,
      'forMusic': forMusic,
      'forComedy': forComedy,
      'forPoetry': forPoetry,
    };
  }

  static EventInclude include({_i2.EventTemplateInclude? template}) {
    return EventInclude._(template: template);
  }

  static EventIncludeList includeList({
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTable>? orderByList,
    EventInclude? include,
  }) {
    return EventIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Event.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Event.t),
      include: include,
    );
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

class EventTable extends _i1.Table {
  EventTable({super.tableRelation}) : super(tableName: 'events') {
    templateId = _i1.ColumnInt(
      'templateId',
      this,
    );
    startsOn = _i1.ColumnDateTime(
      'startsOn',
      this,
    );
    description = _i1.ColumnString(
      'description',
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

  late final _i1.ColumnInt templateId;

  _i2.EventTemplateTable? _template;

  late final _i1.ColumnDateTime startsOn;

  late final _i1.ColumnString description;

  late final _i1.ColumnBool forMusic;

  late final _i1.ColumnBool forComedy;

  late final _i1.ColumnBool forPoetry;

  _i2.EventTemplateTable get template {
    if (_template != null) return _template!;
    _template = _i1.createRelationTable(
      relationFieldName: 'template',
      field: Event.t.templateId,
      foreignField: _i2.EventTemplate.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.EventTemplateTable(tableRelation: foreignTableRelation),
    );
    return _template!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        templateId,
        startsOn,
        description,
        forMusic,
        forComedy,
        forPoetry,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'template') {
      return template;
    }
    return null;
  }
}

class EventInclude extends _i1.IncludeObject {
  EventInclude._({_i2.EventTemplateInclude? template}) {
    _template = template;
  }

  _i2.EventTemplateInclude? _template;

  @override
  Map<String, _i1.Include?> get includes => {'template': _template};

  @override
  _i1.Table get table => Event.t;
}

class EventIncludeList extends _i1.IncludeList {
  EventIncludeList._({
    _i1.WhereExpressionBuilder<EventTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Event.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Event.t;
}

class EventRepository {
  const EventRepository._();

  final attachRow = const EventAttachRowRepository._();

  /// Returns a list of [Event]s matching the given query parameters.
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
  Future<List<Event>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTable>? orderByList,
    _i1.Transaction? transaction,
    EventInclude? include,
  }) async {
    return session.db.find<Event>(
      where: where?.call(Event.t),
      orderBy: orderBy?.call(Event.t),
      orderByList: orderByList?.call(Event.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Event] matching the given query parameters.
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
  Future<Event?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? offset,
    _i1.OrderByBuilder<EventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EventTable>? orderByList,
    _i1.Transaction? transaction,
    EventInclude? include,
  }) async {
    return session.db.findFirstRow<Event>(
      where: where?.call(Event.t),
      orderBy: orderBy?.call(Event.t),
      orderByList: orderByList?.call(Event.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Event] by its [id] or null if no such row exists.
  Future<Event?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    EventInclude? include,
  }) async {
    return session.db.findById<Event>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Event]s in the list and returns the inserted rows.
  ///
  /// The returned [Event]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Event>> insert(
    _i1.Session session,
    List<Event> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Event>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Event] and returns the inserted row.
  ///
  /// The returned [Event] will have its `id` field set.
  Future<Event> insertRow(
    _i1.Session session,
    Event row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Event>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Event]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Event>> update(
    _i1.Session session,
    List<Event> rows, {
    _i1.ColumnSelections<EventTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Event>(
      rows,
      columns: columns?.call(Event.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Event]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Event> updateRow(
    _i1.Session session,
    Event row, {
    _i1.ColumnSelections<EventTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Event>(
      row,
      columns: columns?.call(Event.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Event]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Event>> delete(
    _i1.Session session,
    List<Event> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Event>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Event].
  Future<Event> deleteRow(
    _i1.Session session,
    Event row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Event>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Event>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EventTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Event>(
      where: where(Event.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EventTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Event>(
      where: where?.call(Event.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class EventAttachRowRepository {
  const EventAttachRowRepository._();

  /// Creates a relation between the given [Event] and [EventTemplate]
  /// by setting the [Event]'s foreign key `templateId` to refer to the [EventTemplate].
  Future<void> template(
    _i1.Session session,
    Event event,
    _i2.EventTemplate template, {
    _i1.Transaction? transaction,
  }) async {
    if (event.id == null) {
      throw ArgumentError.notNull('event.id');
    }
    if (template.id == null) {
      throw ArgumentError.notNull('template.id');
    }

    var $event = event.copyWith(templateId: template.id);
    await session.db.updateRow<Event>(
      $event,
      columns: [Event.t.templateId],
      transaction: transaction,
    );
  }
}
