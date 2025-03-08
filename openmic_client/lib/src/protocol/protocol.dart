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
import 'day_of_the_week.dart' as _i2;
import 'event.dart' as _i3;
import 'event_list.dart' as _i4;
import 'event_template.dart' as _i5;
import 'event_template_list.dart' as _i6;
import 'example.dart' as _i7;
import 'google_place.dart' as _i8;
import 'hub.dart' as _i9;
import 'user.dart' as _i10;
import 'venue.dart' as _i11;
import 'venue_list.dart' as _i12;
import 'package:openmic_client/src/protocol/google_place.dart' as _i13;
import 'package:openmic_client/src/protocol/venue.dart' as _i14;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i15;
export 'day_of_the_week.dart';
export 'event.dart';
export 'event_list.dart';
export 'event_template.dart';
export 'event_template_list.dart';
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
    if (t == _i2.DayOfTheWeek) {
      return _i2.DayOfTheWeek.fromJson(data) as T;
    }
    if (t == _i3.Event) {
      return _i3.Event.fromJson(data) as T;
    }
    if (t == _i4.EventList) {
      return _i4.EventList.fromJson(data) as T;
    }
    if (t == _i5.EventTemplate) {
      return _i5.EventTemplate.fromJson(data) as T;
    }
    if (t == _i6.EventTemplateList) {
      return _i6.EventTemplateList.fromJson(data) as T;
    }
    if (t == _i7.Example) {
      return _i7.Example.fromJson(data) as T;
    }
    if (t == _i8.GooglePlace) {
      return _i8.GooglePlace.fromJson(data) as T;
    }
    if (t == _i9.Hub) {
      return _i9.Hub.fromJson(data) as T;
    }
    if (t == _i10.User) {
      return _i10.User.fromJson(data) as T;
    }
    if (t == _i11.Venue) {
      return _i11.Venue.fromJson(data) as T;
    }
    if (t == _i12.VenueList) {
      return _i12.VenueList.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.DayOfTheWeek?>()) {
      return (data != null ? _i2.DayOfTheWeek.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Event?>()) {
      return (data != null ? _i3.Event.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.EventList?>()) {
      return (data != null ? _i4.EventList.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.EventTemplate?>()) {
      return (data != null ? _i5.EventTemplate.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.EventTemplateList?>()) {
      return (data != null ? _i6.EventTemplateList.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Example?>()) {
      return (data != null ? _i7.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.GooglePlace?>()) {
      return (data != null ? _i8.GooglePlace.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Hub?>()) {
      return (data != null ? _i9.Hub.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.User?>()) {
      return (data != null ? _i10.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Venue?>()) {
      return (data != null ? _i11.Venue.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.VenueList?>()) {
      return (data != null ? _i12.VenueList.fromJson(data) : null) as T;
    }
    if (t == List<_i3.Event>) {
      return (data as List).map((e) => deserialize<_i3.Event>(e)).toList() as T;
    }
    if (t == List<_i5.EventTemplate>) {
      return (data as List)
          .map((e) => deserialize<_i5.EventTemplate>(e))
          .toList() as T;
    }
    if (t == List<_i11.Venue>) {
      return (data as List).map((e) => deserialize<_i11.Venue>(e)).toList()
          as T;
    }
    if (t == List<_i13.GooglePlace>) {
      return (data as List)
          .map((e) => deserialize<_i13.GooglePlace>(e))
          .toList() as T;
    }
    if (t == List<_i14.Venue>) {
      return (data as List).map((e) => deserialize<_i14.Venue>(e)).toList()
          as T;
    }
    try {
      return _i15.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.DayOfTheWeek) {
      return 'DayOfTheWeek';
    }
    if (data is _i3.Event) {
      return 'Event';
    }
    if (data is _i4.EventList) {
      return 'EventList';
    }
    if (data is _i5.EventTemplate) {
      return 'EventTemplate';
    }
    if (data is _i6.EventTemplateList) {
      return 'EventTemplateList';
    }
    if (data is _i7.Example) {
      return 'Example';
    }
    if (data is _i8.GooglePlace) {
      return 'GooglePlace';
    }
    if (data is _i9.Hub) {
      return 'Hub';
    }
    if (data is _i10.User) {
      return 'User';
    }
    if (data is _i11.Venue) {
      return 'Venue';
    }
    if (data is _i12.VenueList) {
      return 'VenueList';
    }
    className = _i15.Protocol().getClassNameForObject(data);
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
    if (dataClassName == 'DayOfTheWeek') {
      return deserialize<_i2.DayOfTheWeek>(data['data']);
    }
    if (dataClassName == 'Event') {
      return deserialize<_i3.Event>(data['data']);
    }
    if (dataClassName == 'EventList') {
      return deserialize<_i4.EventList>(data['data']);
    }
    if (dataClassName == 'EventTemplate') {
      return deserialize<_i5.EventTemplate>(data['data']);
    }
    if (dataClassName == 'EventTemplateList') {
      return deserialize<_i6.EventTemplateList>(data['data']);
    }
    if (dataClassName == 'Example') {
      return deserialize<_i7.Example>(data['data']);
    }
    if (dataClassName == 'GooglePlace') {
      return deserialize<_i8.GooglePlace>(data['data']);
    }
    if (dataClassName == 'Hub') {
      return deserialize<_i9.Hub>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_i10.User>(data['data']);
    }
    if (dataClassName == 'Venue') {
      return deserialize<_i11.Venue>(data['data']);
    }
    if (dataClassName == 'VenueList') {
      return deserialize<_i12.VenueList>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i15.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
