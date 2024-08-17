import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/widget_examples/widgets/HelloWordExample.dart';
import 'package:flutter_basics/presentation/widget_examples/widgets/LayoutBuilderExample.dart';
import 'package:flutter_basics/presentation/widget_examples/widgets/MyPhotoStack.dart';

class WidgetExamplesScreen extends StatelessWidget {
  const WidgetExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Fluttar Basics"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              //color: Colors.blue,
              borderRadius: BorderRadius.circular(20)),
          child: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  child: Text(
                    "data",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Hellowordexample(),
                // Container(
                //   // padding: EdgeInsets.all(5),
                //   // margin: EdgeInsets.all(5),
                //   //color: Colors.green,
                //   child: const Expanded(
                //     child: Text(
                //     "Hello world! my name is ziad haggag",
                //     maxLines: 1,
                //     overflow: TextOverflow.ellipsis,
                //     style: TextStyle( fontSize: 20),
                //   ),),
                //),
                SizedBox(
                  height: 200,
                ),
                Myphotostack(),
                SizedBox(height: 100,),
                  Layoutbuilderexample(),
                SizedBox(
                  height: 200,
                ),
              
                SizedBox(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/ziad.png"),
                  ),
                )
              ],
            ),
          )),
    );
  }



}