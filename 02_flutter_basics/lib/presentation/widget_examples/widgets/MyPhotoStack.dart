import 'package:flutter/material.dart';

class Myphotostack extends StatelessWidget {
  const Myphotostack({super.key});

  @override
  Widget build(BuildContext context) {

    return Stack(children: [
                SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset(
                      "assets/ziad.png",
                      fit: BoxFit.cover,
                    )),
                const Positioned(
                    top: 30,
                    left: 50,
                    child: Text(
                      "ziad haggag",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ))
              ]);
              
  }
}