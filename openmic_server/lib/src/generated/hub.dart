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
