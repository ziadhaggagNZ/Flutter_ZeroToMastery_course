import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/navigation_example_screens/screen_one.dart';
import 'package:flutter_basics/presentation/navigation_example_screens/screen_two.dart';
import 'package:flutter_basics/root_bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const RootBottomNavigation(),//ListScreen() //CounterScreen() //WidgetExamplesScreen()
        routes: <String,WidgetBuilder>{
          '/root':(BuildContext context) => const RootBottomNavigation(),
          '/screenOne': (BuildContext context) => const ScreenOne(),
          '/screenTwo': (BuildContext context) => const ScreenTwo(),
        },
         );
  }
}
