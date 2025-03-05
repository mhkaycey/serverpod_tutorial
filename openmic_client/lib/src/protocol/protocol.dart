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
import 'example.dart' as _i2;
import 'google_place.dart' as _i3;
import 'hub.dart' as _i4;
import 'user.dart' as _i5;
import 'venue.dart' as _i6;
import 'venue_list.dart' as _i7;
import 'package:openmic_client/src/protocol/google_place.dart' as _i8;
import 'package:openmic_client/src/protocol/venue.dart' as _i9;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i10;
export 'example.dart';
export 'google_place.dart';
export 'hub.dart';
export 'user.dart';
export 'venue.dart';
export 'venue_list.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Example) {
      return _i2.Example.fromJson(data) as T;
    }
    if (t == _i3.GooglePlace) {
      return _i3.GooglePlace.fromJson(data) as T;
    }
    if (t == _i4.Hub) {
      return _i4.Hub.fromJson(data) as T;
    }
    if (t == _i5.User) {
      return _i5.User.fromJson(data) as T;
    }
    if (t == _i6.Venue) {
      return _i6.Venue.fromJson(data) as T;
    }
    if (t == _i7.VenueList) {
      return _i7.VenueList.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Example?>()) {
      return (data != null ? _i2.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.GooglePlace?>()) {
      return (data != null ? _i3.GooglePlace.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Hub?>()) {
      return (data != null ? _i4.Hub.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.User?>()) {
      return (data != null ? _i5.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Venue?>()) {
      return (data != null ? _i6.Venue.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.VenueList?>()) {
      return (data != null ? _i7.VenueList.fromJson(data) : null) as T;
    }
    if (t == List<_i6.Venue>) {
      return (data as List).map((e) => deserialize<_i6.Venue>(e)).toList()
          as dynamic;
    }
    if (t == List<_i8.GooglePlace>) {
      return (data as List).map((e) => deserialize<_i8.GooglePlace>(e)).toList()
          as dynamic;
    }
    if (t == List<_i9.Venue>) {
      return (data as List).map((e) => deserialize<_i9.Venue>(e)).toList()
          as dynamic;
    }
    try {
      return _i10.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Example) {
      return 'Example';
    }
    if (data is _i3.GooglePlace) {
      return 'GooglePlace';
    }
    if (data is _i4.Hub) {
      return 'Hub';
    }
    if (data is _i5.User) {
      return 'User';
    }
    if (data is _i6.Venue) {
      return 'Venue';
    }
    if (data is _i7.VenueList) {
      return 'VenueList';
    }
    className = _i10.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Example') {
      return deserialize<_i2.Example>(data['data']);
    }
    if (dataClassName == 'GooglePlace') {
      return deserialize<_i3.GooglePlace>(data['data']);
    }
    if (dataClassName == 'Hub') {
      return deserialize<_i4.Hub>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_i5.User>(data['data']);
    }
    if (dataClassName == 'Venue') {
      return deserialize<_i6.Venue>(data['data']);
    }
    if (dataClassName == 'VenueList') {
      return deserialize<_i7.VenueList>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i10.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
