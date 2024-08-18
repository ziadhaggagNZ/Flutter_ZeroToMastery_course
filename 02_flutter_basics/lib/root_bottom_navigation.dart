import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/counter/counter_screen.dart';
import 'package:flutter_basics/presentation/list/list_screen.dart';
import 'package:flutter_basics/presentation/theme_animation/theme_animation_screen.dart';
import 'package:flutter_basics/presentation/widget_examples/widget_examples_screen.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({super.key});

  @override
  State<RootBottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<RootBottomNavigation> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  IndexedStack(
        index: _currentIndex,
        children: const [
          WidgetExamplesScreen(),
          CounterScreen(),
          ListScreen(),
          ThemeAnimationScreen(),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.red,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.star), label: "example"),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "counter"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "list"),
        BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: "Theme"),
      ]),
    );
  }
}
