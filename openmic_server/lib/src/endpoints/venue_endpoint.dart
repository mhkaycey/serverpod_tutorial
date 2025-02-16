import 'dart:developer';

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
    log("Saving venue");
    final authenicationInfo = await session.authenticated;

    if (authenicationInfo == null) {
      return null;
    }

    final user = await User.db.findFirstRow(
      session,
      where: (row) => row.userInfoId.equals(authenicationInfo.userId),
    );

    if (user == null) {
      log('User was null');
      return null;
    }

    try {
      // print(user.toString());
      // print(venue);
      // print(venue.id.toString());
      if (venue.id != null) {
        if (venue.ownerId != user.userInfoId) {
          log('User does not own venue');
          return null;
        }
        return await Venue.db.updateRow(session, venue);
      } else {
        return await Venue.db.insertRow(
          session,
          venue.copyWith(
            ownerId: user.id,
            owner: user,
          ),
        );
      }
    } catch (e) {
      log('Failed to create venue: $e');
      return null;
    }
  }
}
