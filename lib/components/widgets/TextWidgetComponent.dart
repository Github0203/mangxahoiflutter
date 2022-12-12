import 'package:flutter/material.dart';

class TextWidgetComponent extends StatelessWidget {
  final String data;

  // ignore: use_key_in_widget_constructors
  const TextWidgetComponent({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('', style: TextStyle(fontSize: 16, color: Colors.black));
  }
}
