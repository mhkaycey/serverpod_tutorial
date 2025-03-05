import 'package:dio/dio.dart';
import 'package:openmic_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class VenueEndpoint extends Endpoint {
  Future<VenueList> list(Session session,
      {int limit = 10, int page = 1}) async {
    final count = await Venue.db.count(session);

    final results = await Venue.db.find(
      session,
      limit: limit,
      offset: (page * limit) - limit,
      include: Venue.include(
        owner: User.include(),
      ),
    );
    return VenueList(
      count: count,
      results: results,
      page: page,
      limit: limit,
      numPages: (count / limit).ceil(),
      canLoadMore: page * limit < count,
    );
  }

  Future<Venue?> retrieve(Session session, int id) async {
    return await Venue.db.findById(session, id);
  }

  Future<Venue?> save(Session session, Venue venue) async {
    print("Saving venue");
    final authenticationInfo = await session.authenticated; // Ensure auth check

    if (authenticationInfo == null) {
      print("User not authenticated");
      return null;
    }

    final user = await User.db.findFirstRow(
      session,
      where: (row) => row.userInfoId.equals(authenticationInfo.userId),
    );

    if (user == null) {
      print('User was null');
      return null;
    }

    try {
      if (venue.id != null) {
        if (venue.ownerId != user.id) {
          // Fixing ownership check
          print('User does not own venue');
          return null;
        }
        return await Venue.db.updateRow(session, venue);
      } else {
        final newVenue = venue.copyWith(
          ownerId: user.id,
          owner: user,
        );
        return await Venue.db.insertRow(session, newVenue);
      }
    } catch (e, stacktrace) {
      print('Failed to create venue: $e');
      print(stacktrace);
      return null;
    }
  }

  Future<List<GooglePlace>> searchPlace(Session session, String query) async {
    final dio = Dio();
    final url = 'https://maps.googleapis.com/maps/api/place/textsearch/json';

    try {
      final response = await dio.get(url, queryParameters: {
        "query": query,
        "key": "AIzaSyD-AVh6lyq0kW2Motxo6mtTLmDy6eoLF4A",
      });

      if (response.statusCode == 200) {
        final places = response.data['results'] as List;
        final List<GooglePlace> googlePlaces = [];
        for (var place in places) {
          googlePlaces.add(
            GooglePlace(
              placeId: place['place_id'],
              name: place['name'],
              latitude: place['geometry']['location']['lat'],
              longitude: place['geometry']['location']['lng'],
              address: place['formatted_address'],
            ),
          );
        }
        return googlePlaces;
      } else {
        print("Error: ${response.statusCode}");
        return [];
      }
    } catch (e) {
      print("Error: $e");
      return [];
    }
  }

  Future<List<Venue>> map(Session session, int hubId) async {
    try {
      return await Venue.db.find(
        session,
        where: (row) => row.hubId.equals(hubId),
        include: Venue.include(
          owner: User.include(),
        ),
      );
    } catch (e) {
      print("Error: $e");
      return [];
    }
  }
}
