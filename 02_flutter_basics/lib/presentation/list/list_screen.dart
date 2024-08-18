import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
  List<String> example = ["ziad" , "haggag" , "first"  , "second"];  
    return Scaffold(
      appBar: AppBar(title: const Text("ListView Example "),),
      body: ListView.separated(
        itemCount: example.length,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10,);
        },
        itemBuilder: (context,index){
          return ListTile(
            title: Text(example[index]),
            subtitle: Text("item number $index"),
            leading:  Checkbox(value: false, onChanged: (value){}),
          );
        }
        )
    );
  }
}








// ListView(
//         //scrollDirection: Axis.horizontal,
//         children: [
//           Container(
//             color: Colors.amber,
//             height: 100,
//             width: 50,
//           ),
//           Container(
//             color: Colors.red,
//             height: 100,
//             width: 50,
//           ),
//           Container(
//             color: Colors.blue,
//             height: 100,
//             width: 50,
//           ),
//           Container(
//             color: Colors.blueGrey,
//             height: 100,
//             width: 50,
//           ),
//                   Container(
//             color: Colors.amber,
//             height: 100,
//             width: 50,
//           ),
//           Container(
//             color: Colors.red,
//             height: 100,
//             width: 50,
//           ),
//           Container(
//             color: Colors.blue,
//             height: 100,
//             width: 50,
//           ),
//           Container(
//             color: Colors.blueGrey,
//             height: 100,
//             width: 50,
//           ),
//           Container(
//             color: Colors.amber,
//             height: 100,
//             width: 50,
//           ),
//           Container(
//             color: Colors.red,
//             height: 100,
//             width: 50,
//           ),
//           Container(
//             color: Colors.blue,
//             height: 100,
//             width: 50,
//           ),
//           Container(
//             color: Colors.blueGrey,
//             height: 100,
//             width: 50,
//           ),
//                   Container(
//             color: Colors.amber,
//             height: 100,
//             width: 50,
//           ),
//           Container(
//             color: Colors.red,
//             height: 100,
//             width: 50,
//           ),
//           Container(
//             color: Colors.blue,
//             height: 100,
//             width: 50,
//           ),
//           Container(
//             color: Colors.blueGrey,
//             height: 100,
//             width: 50,
//           ),
//         ],
//       ) ,