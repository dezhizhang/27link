import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qiai/container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('哈哈你好'),
        ),
        body: HomeContent(),
      ),
    );
  }
}


// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       height: 180,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           Container(
//             width: 180,
//             height: 180,
//             color: Colors.pink,
//           ),
//           Container(
//             width: 180,
//             height: 180,
//             color: Colors.yellow,
//           ),
//           Container(
//             width: 180,
//             height: 180,
//             color: Colors.green,
//           )
//         ],
//       ),
//     );
//   }
  
// }

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 180,
      child: ListView(
        children: <Widget>[
          Container(
            width: 180,
            height: 180,
            color: Colors.red,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.green,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.pink,
          )
        ],
      ),
    );
  }
  
}












