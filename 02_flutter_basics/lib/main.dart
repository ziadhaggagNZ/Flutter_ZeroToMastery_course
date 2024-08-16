import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Fluttar Basics"),
      ),
      body:  Center(
        child:  Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),
          child:  Center(
            child: Text(
              "Hello world!",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
        ),
      ),
    ));
  }
}
