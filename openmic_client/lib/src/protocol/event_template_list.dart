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

abstract class EventTemplateList implements _i1.SerializableModel {
  EventTemplateList._({
    required this.count,
    required this.results,
    required this.page,
    required this.limit,
    required this.numPages,
    required this.canLoadMore,
  });

  factory EventTemplateList({
    required int count,
    required List<_i2.EventTemplate> results,
    required int page,
    required int limit,
    required int numPages,
    required bool canLoadMore,
  }) = _EventTemplateListImpl;

  factory EventTemplateList.fromJson(Map<String, dynamic> jsonSerialization) {
    return EventTemplateList(
      count: jsonSerialization['count'] as int,
      results: (jsonSerialization['results'] as List)
          .map((e) => _i2.EventTemplate.fromJson((e as Map<String, dynamic>)))
          .toList(),
      page: jsonSerialization['page'] as int,
      limit: jsonSerialization['limit'] as int,
      numPages: jsonSerialization['numPages'] as int,
      canLoadMore: jsonSerialization['canLoadMore'] as bool,
    );
  }

  int count;

  List<_i2.EventTemplate> results;

  int page;

  int limit;

  int numPages;

  bool canLoadMore;

  /// Returns a shallow copy of this [EventTemplateList]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  EventTemplateList copyWith({
    int? count,
    List<_i2.EventTemplate>? results,
    int? page,
    int? limit,
    int? numPages,
    bool? canLoadMore,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'results': results.toJson(valueToJson: (v) => v.toJson()),
      'page': page,
      'limit': limit,
      'numPages': numPages,
      'canLoadMore': canLoadMore,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _EventTemplateListImpl extends EventTemplateList {
  _EventTemplateListImpl({
    required int count,
    required List<_i2.EventTemplate> results,
    required int page,
    required int limit,
    required int numPages,
    required bool canLoadMore,
  }) : super._(
          count: count,
          results: results,
          page: page,
          limit: limit,
          numPages: numPages,
          canLoadMore: canLoadMore,
        );

  /// Returns a shallow copy of this [EventTemplateList]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  EventTemplateList copyWith({
    int? count,
    List<_i2.EventTemplate>? results,
    int? page,
    int? limit,
    int? numPages,
    bool? canLoadMore,
  }) {
    return EventTemplateList(
      count: count ?? this.count,
      results: results ?? this.results.map((e0) => e0.copyWith()).toList(),
      page: page ?? this.page,
      limit: limit ?? this.limit,
      numPages: numPages ?? this.numPages,
      canLoadMore: canLoadMore ?? this.canLoadMore,
    );
  }
}
