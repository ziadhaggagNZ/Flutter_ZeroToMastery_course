import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
                Container(
                  //color: Colors.red,
                  child: const Text(
                    "Hello world!",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
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
                Stack(children: [
                  SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        "assets/ziad.png",
                        fit: BoxFit.cover,
                      )),
                  Positioned(
                      top: 30,
                      left: 50,
                      child: Text(
                        "ziad haggag",
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ))
                ]),
                SizedBox(height: 100,),
                  Container(
                    height: 300,
                    width: 300,
                    color: Colors.yellow,
                  child: LayoutBuilder(builder: (context,Constraints){
                    return Center(
                      child: Container(
                        height: Constraints.maxHeight * 0.8,
                        width: Constraints.maxWidth * 0.8,
                        color: Colors.blue,
                        child: Center(child: const Text("Layout Builder Example")),
                      ) ,
                    );
                  })
                ),
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
    ));
  }
}
