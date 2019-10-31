import 'package:flutter/material.dart';

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
          title: Text('哈全'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primaryColor: Colors.pink
      ),
    );
  }
}


// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Row(
//       children: <Widget>[
//         Expanded(
//           flex: 1,
//           child: Container(
//             height: 100,
//             color: Colors.red,
//           ),
//         ),
//         Expanded(
//           flex: 2,
//           child: Container(
//             height: 100,
//             color: Colors.yellow,
//           ),
//         )
//       ],
//     );
//   }
  
// }

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            height: 100,
            color: Colors.red,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 100,
            color: Colors.pink,
          ),
        )
      ],
    );
  }
  
}