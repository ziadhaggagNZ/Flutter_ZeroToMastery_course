import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/widget_examples/widget_examples_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: WidgetExamplesScreen()
         );
  }
}
