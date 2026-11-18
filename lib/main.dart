// Core widgets only: the UI library (Material, Cupertino) is chosen in the architecture ADR.
import 'package:flutter/widgets.dart';

void main() {
  runApp(const OpenPagelexApp());
}

class OpenPagelexApp extends StatelessWidget {
  const OpenPagelexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.ltr,
      child: Center(child: Text('OpenPagelex')),
    );
  }
}
