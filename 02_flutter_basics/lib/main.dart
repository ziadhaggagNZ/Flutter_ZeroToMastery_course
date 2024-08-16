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
      body:  Container(

        decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              child: Text("data",style: TextStyle( fontSize: 20),),
            ),
             Container(
              color: Colors.red,
              child: Text(
                "Hello world!",
                style: TextStyle( fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              color: Colors.green,
              child: Text(
                "Hello world!",
                style: TextStyle( fontSize: 20),
              ),
            ),
          ],
        )
      ),
    ));
  }
}
