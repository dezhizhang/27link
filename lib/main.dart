import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Stack(
//       children: <Widget>[
//         Container(
//           width: 400,
//           height: 400,
//           color: Colors.red,
//         ),
//         Text('哈哈我是flex')
//       ],
//     );
//   }
// }

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是哈哈哈APP'),
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
//     return Center(
//       child: Stack(
//         alignment: Alignment.center,
//         children: <Widget>[
//           Container(
//             width: 300,
//             height: 300,
//             color: Colors.pink,
//           ),
//           Text('哈哈哈')
//         ],
//       ),
//     );
//   }
  
// }

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 400,
        height: 400,
        color: Colors.pink,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.home,color: Colors.white),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Icon(Icons.search,color: Colors.white),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.send,color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
  
}
