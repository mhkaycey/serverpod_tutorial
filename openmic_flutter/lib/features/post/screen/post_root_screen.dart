import 'package:flutter/material.dart';

class PostRootScreen extends StatelessWidget {
  const PostRootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Posts'),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.blue,
        child: Column(
          children: [
            Text("Post Root Screen"),
            ElevatedButton(
              onPressed: () {},
              child: Text('Go to Post 1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Go to Post 2'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Go to Post 3'),
            ),
          ],
        ),
      ),
    );
  }
}
