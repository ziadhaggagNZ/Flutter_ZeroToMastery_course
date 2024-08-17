import 'package:flutter/material.dart';

class Layoutbuilderexample extends StatelessWidget {
  const Layoutbuilderexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 300,
                  width: 300,
                  color: Colors.yellow,
                child: LayoutBuilder(builder: (context,Constraints){
                  return Center(
                    child: Container(
                      height: Constraints.maxHeight * 0.8,
                      width: Constraints.maxWidth * 0.8,
                      color: Colors.blue,
                      child: const Center(child: const Text("Layout Builder Example")),
                    ) ,
                  );
                })
              );
  }
}