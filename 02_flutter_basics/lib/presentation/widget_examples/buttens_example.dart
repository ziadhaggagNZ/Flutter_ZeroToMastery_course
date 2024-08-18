import 'package:flutter/material.dart';

class ButtensExample extends StatefulWidget {
  const ButtensExample({super.key});

  @override
  State<ButtensExample> createState() => _ButtensExampleState();
}

class _ButtensExampleState extends State<ButtensExample> {
    bool switchState = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {
              print("TextButton is pressed");
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8)
              ),
              child: const Padding(
                padding:  EdgeInsets.all(8.0),
                child:  Text("TextButton",style: TextStyle(fontSize: 20 , color: Colors.black),),
              )
              )
              ),

              IconButton(onPressed: () {
                print("IconButton is pressed");
              },
               icon: Icon(Icons.agriculture_rounded)),

               Switch(
                value: switchState,
                 onChanged: (value) {
                setState(() {
                  switchState = value;
                  print(switchState);
                });  
               },
               )
      ],
    );
  }
}
