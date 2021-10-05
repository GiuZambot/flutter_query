import 'package:flutter/material.dart';

void main() {
  runApp(const PergundaApp());
}

class PergundaApp extends StatelessWidget {
  const PergundaApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text('Flutter!'),
    );
  }
}
