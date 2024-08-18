import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/navigation_example_screens/screen_one.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("screen Two"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/screenOne");
              },
              child: const Text("Go To screen One")),
        )
    );
  }
}
