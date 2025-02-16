import 'package:flutter/material.dart';

class EventRootScreen extends StatelessWidget {
  const EventRootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Events'),
      ),
      body: Text("Event Root Screen"),
    );
  }
}
