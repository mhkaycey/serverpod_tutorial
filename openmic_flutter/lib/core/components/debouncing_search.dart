import 'dart:async';

import 'package:flutter/material.dart';

class DebouncingSearchBar extends StatefulWidget {
  final Function(String) onChanged;
  final bool autoFocus;
  final String? hintText;
  final int debounceDuration;
  const DebouncingSearchBar({
    super.key,
    required this.onChanged,
    this.autoFocus = false,
    this.hintText,
    this.debounceDuration = 500,
  });

  @override
  State<DebouncingSearchBar> createState() => _DebouncingSearchBarState();
}

class _DebouncingSearchBarState extends State<DebouncingSearchBar> {
  Timer? _debounceTimer;
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      elevation: WidgetStateProperty.all(2),
      autoFocus: widget.autoFocus,
      hintText: widget.hintText,
      onChanged: (value) {
        if (_debounceTimer?.isActive ?? false) _debounceTimer?.cancel();
        _debounceTimer =
            Timer(Duration(milliseconds: widget.debounceDuration), () {
          widget.onChanged(value);
        });
      },
    );
  }
}
