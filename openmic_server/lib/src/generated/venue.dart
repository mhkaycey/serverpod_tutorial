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
import 'hub.dart' as _i3;

abstract class Venue implements _i1.TableRow, _i1.ProtocolSerialization {
  Venue._({
    this.id,
    required this.ownerId,
    this.owner,
    required this.hubId,
    this.hub,
    required this.name,
    required this.primaryImageUrl,
    required this.bio,
    this.googlePlaceId,
    required this.address,
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
    String? googlePlaceId,
    required String address,
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
      googlePlaceId: jsonSerialization['googlePlaceId'] as String?,
      address: jsonSerialization['address'] as String,
      websiteUrl: jsonSerialization['websiteUrl'] as String,
      instagramUrl: jsonSerialization['instagramUrl'] as String,
      latitude: (jsonSerialization['latitude'] as num).toDouble(),
      longitude: (jsonSerialization['longitude'] as num).toDouble(),
      isVerified: jsonSerialization['isVerified'] as bool,
    );
  }

  static final t = VenueTable();

  static const db = VenueRepository._();

  @override
  int? id;

  int ownerId;

  _i2.User? owner;

  int hubId;

  _i3.Hub? hub;

  String name;

  String primaryImageUrl;

  String bio;

  String? googlePlaceId;

  String address;

  String websiteUrl;

  String instagramUrl;

  double latitude;

  double longitude;

  bool isVerified;

  @override
  _i1.Table get table => t;

  Venue copyWith({
    int? id,
    int? ownerId,
    _i2.User? owner,
    int? hubId,
    _i3.Hub? hub,
    String? name,
    String? primaryImageUrl,
    String? bio,
    String? googlePlaceId,
    String? address,
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
      if (googlePlaceId != null) 'googlePlaceId': googlePlaceId,
      'address': address,
      'websiteUrl': websiteUrl,
      'instagramUrl': instagramUrl,
      'latitude': latitude,
      'longitude': longitude,
      'isVerified': isVerified,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'ownerId': ownerId,
      if (owner != null) 'owner': owner?.toJsonForProtocol(),
      'hubId': hubId,
      if (hub != null) 'hub': hub?.toJsonForProtocol(),
      'name': name,
      'primaryImageUrl': primaryImageUrl,
      'bio': bio,
      if (googlePlaceId != null) 'googlePlaceId': googlePlaceId,
      'address': address,
      'websiteUrl': websiteUrl,
      'instagramUrl': instagramUrl,
      'latitude': latitude,
      'longitude': longitude,
      'isVerified': isVerified,
    };
  }

  static VenueInclude include({
    _i2.UserInclude? owner,
    _i3.HubInclude? hub,
  }) {
    return VenueInclude._(
      owner: owner,
      hub: hub,
    );
  }

  static VenueIncludeList includeList({
    _i1.WhereExpressionBuilder<VenueTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<VenueTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<VenueTable>? orderByList,
    VenueInclude? include,
  }) {
    return VenueIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Venue.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Venue.t),
      include: include,
    );
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
    String? googlePlaceId,
    required String address,
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
          googlePlaceId: googlePlaceId,
          address: address,
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
    Object? googlePlaceId = _Undefined,
    String? address,
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
      googlePlaceId:
          googlePlaceId is String? ? googlePlaceId : this.googlePlaceId,
      address: address ?? this.address,
      websiteUrl: websiteUrl ?? this.websiteUrl,
      instagramUrl: instagramUrl ?? this.instagramUrl,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      isVerified: isVerified ?? this.isVerified,
    );
  }
}

class VenueTable extends _i1.Table {
  VenueTable({super.tableRelation}) : super(tableName: 'venue') {
    ownerId = _i1.ColumnInt(
      'ownerId',
      this,
    );
    hubId = _i1.ColumnInt(
      'hubId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    primaryImageUrl = _i1.ColumnString(
      'primaryImageUrl',
      this,
    );
    bio = _i1.ColumnString(
      'bio',
      this,
    );
    googlePlaceId = _i1.ColumnString(
      'googlePlaceId',
      this,
    );
    address = _i1.ColumnString(
      'address',
      this,
    );
    websiteUrl = _i1.ColumnString(
      'websiteUrl',
      this,
    );
    instagramUrl = _i1.ColumnString(
      'instagramUrl',
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
    isVerified = _i1.ColumnBool(
      'isVerified',
      this,
    );
  }

  late final _i1.ColumnInt ownerId;

  _i2.UserTable? _owner;

  late final _i1.ColumnInt hubId;

  _i3.HubTable? _hub;

  late final _i1.ColumnString name;

  late final _i1.ColumnString primaryImageUrl;

  late final _i1.ColumnString bio;

  late final _i1.ColumnString googlePlaceId;

  late final _i1.ColumnString address;

  late final _i1.ColumnString websiteUrl;

  late final _i1.ColumnString instagramUrl;

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  late final _i1.ColumnBool isVerified;

  _i2.UserTable get owner {
    if (_owner != null) return _owner!;
    _owner = _i1.createRelationTable(
      relationFieldName: 'owner',
      field: Venue.t.ownerId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _owner!;
  }

  _i3.HubTable get hub {
    if (_hub != null) return _hub!;
    _hub = _i1.createRelationTable(
      relationFieldName: 'hub',
      field: Venue.t.hubId,
      foreignField: _i3.Hub.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.HubTable(tableRelation: foreignTableRelation),
    );
    return _hub!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        ownerId,
        hubId,
        name,
        primaryImageUrl,
        bio,
        googlePlaceId,
        address,
        websiteUrl,
        instagramUrl,
        latitude,
        longitude,
        isVerified,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'owner') {
      return owner;
    }
    if (relationField == 'hub') {
      return hub;
    }
    return null;
  }
}

class VenueInclude extends _i1.IncludeObject {
  VenueInclude._({
    _i2.UserInclude? owner,
    _i3.HubInclude? hub,
  }) {
    _owner = owner;
    _hub = hub;
  }

  _i2.UserInclude? _owner;

  _i3.HubInclude? _hub;

  @override
  Map<String, _i1.Include?> get includes => {
        'owner': _owner,
        'hub': _hub,
      };

  @override
  _i1.Table get table => Venue.t;
}

class VenueIncludeList extends _i1.IncludeList {
  VenueIncludeList._({
    _i1.WhereExpressionBuilder<VenueTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Venue.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Venue.t;
}

class VenueRepository {
  const VenueRepository._();

  final attachRow = const VenueAttachRowRepository._();

  Future<List<Venue>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<VenueTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<VenueTable>? orderByList,
    _i1.Transaction? transaction,
    VenueInclude? include,
  }) async {
    return session.db.find<Venue>(
      where: where?.call(Venue.t),
      orderBy: orderBy?.call(Venue.t),
      orderByList: orderByList?.call(Venue.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Venue?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueTable>? where,
    int? offset,
    _i1.OrderByBuilder<VenueTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<VenueTable>? orderByList,
    _i1.Transaction? transaction,
    VenueInclude? include,
  }) async {
    return session.db.findFirstRow<Venue>(
      where: where?.call(Venue.t),
      orderBy: orderBy?.call(Venue.t),
      orderByList: orderByList?.call(Venue.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Venue?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    VenueInclude? include,
  }) async {
    return session.db.findById<Venue>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Venue>> insert(
    _i1.Session session,
    List<Venue> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Venue>(
      rows,
      transaction: transaction,
    );
  }

  Future<Venue> insertRow(
    _i1.Session session,
    Venue row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Venue>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Venue>> update(
    _i1.Session session,
    List<Venue> rows, {
    _i1.ColumnSelections<VenueTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Venue>(
      rows,
      columns: columns?.call(Venue.t),
      transaction: transaction,
    );
  }

  Future<Venue> updateRow(
    _i1.Session session,
    Venue row, {
    _i1.ColumnSelections<VenueTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Venue>(
      row,
      columns: columns?.call(Venue.t),
      transaction: transaction,
    );
  }

  Future<List<Venue>> delete(
    _i1.Session session,
    List<Venue> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Venue>(
      rows,
      transaction: transaction,
    );
  }

  Future<Venue> deleteRow(
    _i1.Session session,
    Venue row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Venue>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Venue>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<VenueTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Venue>(
      where: where(Venue.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<VenueTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Venue>(
      where: where?.call(Venue.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class VenueAttachRowRepository {
  const VenueAttachRowRepository._();

  Future<void> owner(
    _i1.Session session,
    Venue venue,
    _i2.User owner, {
    _i1.Transaction? transaction,
  }) async {
    if (venue.id == null) {
      throw ArgumentError.notNull('venue.id');
    }
    if (owner.id == null) {
      throw ArgumentError.notNull('owner.id');
    }

    var $venue = venue.copyWith(ownerId: owner.id);
    await session.db.updateRow<Venue>(
      $venue,
      columns: [Venue.t.ownerId],
      transaction: transaction,
    );
  }

  Future<void> hub(
    _i1.Session session,
    Venue venue,
    _i3.Hub hub, {
    _i1.Transaction? transaction,
  }) async {
    if (venue.id == null) {
      throw ArgumentError.notNull('venue.id');
    }
    if (hub.id == null) {
      throw ArgumentError.notNull('hub.id');
    }

    var $venue = venue.copyWith(hubId: hub.id);
    await session.db.updateRow<Venue>(
      $venue,
      columns: [Venue.t.hubId],
      transaction: transaction,
    );
  }
}
