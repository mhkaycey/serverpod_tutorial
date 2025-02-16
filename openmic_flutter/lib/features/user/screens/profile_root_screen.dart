import 'package:flutter/material.dart';

class ProfileRootScreen extends StatelessWidget {
  const ProfileRootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
      ),
      body: Text("Profile Root Screen"),
    );
  }
}
