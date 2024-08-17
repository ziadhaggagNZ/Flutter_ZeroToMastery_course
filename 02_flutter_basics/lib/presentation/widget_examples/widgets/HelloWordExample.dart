import 'package:flutter/material.dart';

class Hellowordexample extends StatelessWidget {
  const Hellowordexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  //color: Colors.red,
                  child: const Text(
                    "Hello world!",
                    style: TextStyle(fontSize: 20),
                  ),
                );
  }
}