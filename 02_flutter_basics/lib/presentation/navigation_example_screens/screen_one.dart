import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: Text("screen one"), backgroundColor: Colors.green),
        body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go Back")),
        )
        );
  }
}
