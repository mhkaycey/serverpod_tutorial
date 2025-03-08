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

abstract class Hub implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = HubTable();

  static const db = HubRepository._();

  @override
  int? id;

  String name;

  double latitude;

  double longitude;

  @override
  _i1.Table get table => t;

  /// Returns a shallow copy of this [Hub]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  static HubInclude include() {
    return HubInclude._();
  }

  static HubIncludeList includeList({
    _i1.WhereExpressionBuilder<HubTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<HubTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<HubTable>? orderByList,
    HubInclude? include,
  }) {
    return HubIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Hub.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Hub.t),
      include: include,
    );
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

  /// Returns a shallow copy of this [Hub]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
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

class HubTable extends _i1.Table {
  HubTable({super.tableRelation}) : super(tableName: 'hub') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    latitude = _i1.ColumnDouble(
      'latitude',
      this,
    );
    longitude = _i1.ColumnDouble(
      'longitude',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        latitude,
        longitude,
      ];
}

class HubInclude extends _i1.IncludeObject {
  HubInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Hub.t;
}

class HubIncludeList extends _i1.IncludeList {
  HubIncludeList._({
    _i1.WhereExpressionBuilder<HubTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Hub.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Hub.t;
}

class HubRepository {
  const HubRepository._();

  /// Returns a list of [Hub]s matching the given query parameters.
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
  Future<List<Hub>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<HubTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<HubTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<HubTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Hub>(
      where: where?.call(Hub.t),
      orderBy: orderBy?.call(Hub.t),
      orderByList: orderByList?.call(Hub.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Hub] matching the given query parameters.
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
  Future<Hub?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<HubTable>? where,
    int? offset,
    _i1.OrderByBuilder<HubTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<HubTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Hub>(
      where: where?.call(Hub.t),
      orderBy: orderBy?.call(Hub.t),
      orderByList: orderByList?.call(Hub.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Hub] by its [id] or null if no such row exists.
  Future<Hub?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Hub>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Hub]s in the list and returns the inserted rows.
  ///
  /// The returned [Hub]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Hub>> insert(
    _i1.Session session,
    List<Hub> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Hub>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Hub] and returns the inserted row.
  ///
  /// The returned [Hub] will have its `id` field set.
  Future<Hub> insertRow(
    _i1.Session session,
    Hub row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Hub>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Hub]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Hub>> update(
    _i1.Session session,
    List<Hub> rows, {
    _i1.ColumnSelections<HubTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Hub>(
      rows,
      columns: columns?.call(Hub.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Hub]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Hub> updateRow(
    _i1.Session session,
    Hub row, {
    _i1.ColumnSelections<HubTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Hub>(
      row,
      columns: columns?.call(Hub.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Hub]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Hub>> delete(
    _i1.Session session,
    List<Hub> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Hub>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Hub].
  Future<Hub> deleteRow(
    _i1.Session session,
    Hub row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Hub>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Hub>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<HubTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Hub>(
      where: where(Hub.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<HubTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Hub>(
      where: where?.call(Hub.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
