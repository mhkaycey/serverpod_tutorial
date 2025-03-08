import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openmic_client/openmic_client.dart';
import 'package:openmic_flutter/features/event/provider/event_service_provider.dart';

class EventRootScreen extends ConsumerWidget {
  const EventRootScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Events'),
      ),
      body: Text("Event Root Screen"),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final eventTemplate = EventTemplate(
            ownerId: 1,
            venueId: 2,
            name: "Hard Code",
            description: "description",
            startsOn: DateTime.now(),
            repeats: true,
            dayOfWeek: DayOfTheWeek.saturday,
            primaryImageUrl: "",
            forMusic: true,
            forComedy: true,
            forPoetry: true,
          );
          ref.read(eventServiceProvider).saveTemplate(eventTemplate);
        },
      ),
    );
  }
}
