import 'package:flutter/material.dart';

class ToastUtils {
  static void show(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
    // Show toast
  }
}
