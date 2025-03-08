import 'package:fpdart/fpdart.dart';
import 'package:openmic_client/openmic_client.dart';

class EventService {
  final Client client;
  const EventService(this.client);

  Future<Either<String, EventTemplateList>> listTemplates({
    required int page,
    required int limit,
  }) async {
    try {
      final result = await client.eventTemplate.list(limit: limit, page: page);
      return right(result);
    } catch (e) {
      return left(e.toString());
    }
  }

  Future<Either<String, EventTemplate>> retrieveTemplate(int id) async {
    try {
      final result = await client.eventTemplate.retrieve(id);
      if (result == null) {
        return left('Event Template not found');
      }

      return right(result);
    } catch (e) {
      print(e);
      return left(e.toString());
    }
  }

  Future<Either<String, EventTemplate>> saveTemplate(
    EventTemplate eventTemplate,
  ) async {
    print("object: $eventTemplate");
    try {
      final result = await client.eventTemplate.save(eventTemplate);
      if (result == null) {
        return left('Event Template not found');
      }
      print(result);
      return right(result);
    } catch (e, sk) {
      print("$e, $sk");
      return left(e.toString());
    }
  }
  // TODO: implement
}
