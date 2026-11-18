import 'package:flutter/material.dart';

void main() {
  runApp(const OpenPagelexApp());
}

class OpenPagelexApp extends StatelessWidget {
  const OpenPagelexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'OpenPagelex',
      home: Scaffold(body: Center(child: Text('OpenPagelex'))),
    );
  }
}
