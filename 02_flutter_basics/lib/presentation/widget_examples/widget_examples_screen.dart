import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/componants/custom_button.dart';
import 'package:flutter_basics/presentation/widget_examples/buttens_example.dart';
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  child: Text(
                    "data",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const Hellowordexample(),
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
                const SizedBox(
                  height: 200,
                ),
                const Myphotostack(),
                const SizedBox(
                  height: 100,
                ),
                const ButtensExample(),
                const SizedBox(
                  height: 100,
                ),
                const Layoutbuilderexample(),
                const SizedBox(
                  height: 200,
                ),
                CustomButton(
                    onTap: () {
                      print("tapped");
                    },
                    icon: Icons.ac_unit),
                const SizedBox(
                  height: 200,
                ),
                CustomButtonGester(
                    onTap: () {
                      print("CustomButtonGester tapped");
                    },
                    text: "Button Gester"),
                const SizedBox(
                  height: 100,
                ),
                const SizedBox(
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
