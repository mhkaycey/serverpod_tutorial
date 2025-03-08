import 'package:openmic_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class EventTemplateEndpoint extends Endpoint {
  Future<EventTemplateList> list(Session session,
      {int limit = 10, int page = 1}) async {
    final count = await EventTemplate.db.count(session);

    final results = await EventTemplate.db.find(session,
        limit: limit,
        offset: (page * limit) - limit,
        include: EventTemplate.include(
          owner: User.include(),
          venue: Venue.include(
            owner: User.include(),
          ),
        ));
    return EventTemplateList(
      count: count,
      results: results,
      page: page,
      limit: limit,
      numPages: (count / limit).ceil(),
      canLoadMore: page * limit < count,
    );
  }

  Future<EventTemplate?> retrieve(Session session, int id) async {
    return await EventTemplate.db.findById(session, id);
  }

  Future<EventTemplate?> save(
      Session session, EventTemplate eventTemplate) async {
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
      if (eventTemplate.id != null) {
        if (eventTemplate.ownerId != user.id) {
          // Fixing ownership check
          print("user is not the owner of this event template");
          return null;
        }
        return await EventTemplate.db.updateRow(session, eventTemplate);
      } else {
        final newEventTemplate = eventTemplate.copyWith(
          ownerId: user.id,
          owner: user,
        );
        final result =
            await EventTemplate.db.insertRow(session, newEventTemplate);
        if (result.id != null) {
          final event = Event(
            startsOn: result.startsOn,
            forMusic: result.forMusic,
            forComedy: result.forComedy,
            forPoetry: result.forPoetry,
            templateId: result.id!,
          );
          print(result);
          print(newEventTemplate);
          await Event.db.insertRow(session, event);

          if (result.repeats) {
            // TODO: implement repeats
          }
        }

        return result;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
