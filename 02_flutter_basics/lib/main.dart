import 'package:flutter/material.dart';
import 'package:flutter_basics/root_bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: RootBottomNavigation()//ListScreen() //CounterScreen() //WidgetExamplesScreen()
         );
  }
}
