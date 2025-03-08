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
import 'dart:async' as _i2;
import 'package:openmic_client/src/protocol/event_template_list.dart' as _i3;
import 'package:openmic_client/src/protocol/event_template.dart' as _i4;
import 'package:openmic_client/src/protocol/user.dart' as _i5;
import 'package:openmic_client/src/protocol/venue_list.dart' as _i6;
import 'package:openmic_client/src/protocol/venue.dart' as _i7;
import 'package:openmic_client/src/protocol/google_place.dart' as _i8;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i9;
import 'protocol.dart' as _i10;

/// {@category Endpoint}
class EndpointAsset extends _i1.EndpointRef {
  EndpointAsset(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'asset';

  _i2.Future<String?> getUploadDescription(String path) =>
      caller.callServerEndpoint<String?>(
        'asset',
        'getUploadDescription',
        {'path': path},
      );

  _i2.Future<bool> verifyUpload(String path) => caller.callServerEndpoint<bool>(
        'asset',
        'verifyUpload',
        {'path': path},
      );
}

/// {@category Endpoint}
class EndpointEventTemplate extends _i1.EndpointRef {
  EndpointEventTemplate(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'eventTemplate';

  _i2.Future<_i3.EventTemplateList> list({
    required int limit,
    required int page,
  }) =>
      caller.callServerEndpoint<_i3.EventTemplateList>(
        'eventTemplate',
        'list',
        {
          'limit': limit,
          'page': page,
        },
      );

  _i2.Future<_i4.EventTemplate?> retrieve(int id) =>
      caller.callServerEndpoint<_i4.EventTemplate?>(
        'eventTemplate',
        'retrieve',
        {'id': id},
      );

  _i2.Future<_i4.EventTemplate?> save(_i4.EventTemplate eventTemplate) =>
      caller.callServerEndpoint<_i4.EventTemplate?>(
        'eventTemplate',
        'save',
        {'eventTemplate': eventTemplate},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointUser extends _i1.EndpointRef {
  EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  _i2.Future<_i5.User?> me() => caller.callServerEndpoint<_i5.User?>(
        'user',
        'me',
        {},
      );
}

/// {@category Endpoint}
class EndpointVenue extends _i1.EndpointRef {
  EndpointVenue(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'venue';

  _i2.Future<_i6.VenueList> list({
    required int limit,
    required int page,
  }) =>
      caller.callServerEndpoint<_i6.VenueList>(
        'venue',
        'list',
        {
          'limit': limit,
          'page': page,
        },
      );

  _i2.Future<_i7.Venue?> retrieve(int id) =>
      caller.callServerEndpoint<_i7.Venue?>(
        'venue',
        'retrieve',
        {'id': id},
      );

  _i2.Future<_i7.Venue?> save(_i7.Venue venue) =>
      caller.callServerEndpoint<_i7.Venue?>(
        'venue',
        'save',
        {'venue': venue},
      );

  _i2.Future<List<_i8.GooglePlace>> searchPlace(String query) =>
      caller.callServerEndpoint<List<_i8.GooglePlace>>(
        'venue',
        'searchPlace',
        {'query': query},
      );

  _i2.Future<List<_i7.Venue>> map(int hubId) =>
      caller.callServerEndpoint<List<_i7.Venue>>(
        'venue',
        'map',
        {'hubId': hubId},
      );
}

class Modules {
  Modules(Client client) {
    auth = _i9.Caller(client);
  }

  late final _i9.Caller auth;
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i10.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    asset = EndpointAsset(this);
    eventTemplate = EndpointEventTemplate(this);
    example = EndpointExample(this);
    user = EndpointUser(this);
    venue = EndpointVenue(this);
    modules = Modules(this);
  }

  late final EndpointAsset asset;

  late final EndpointEventTemplate eventTemplate;

  late final EndpointExample example;

  late final EndpointUser user;

  late final EndpointVenue venue;

  late final Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'asset': asset,
        'eventTemplate': eventTemplate,
        'example': example,
        'user': user,
        'venue': venue,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
