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
          title: Text('首页'),
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
//     return ListView(
//       children: <Widget>[
//         Card(
//           child: Column(
//             children: <Widget>[
//               ListTile(
//                 title: Text('高级工程师'),
//                 subtitle: Text('哈呈哈'),
//               )
//             ],
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
    return ListView(
      children: <Widget>[
        Card(
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.cover),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('标题'),
                subtitle: Text('副标题'),
              )
            ],
          ),
        )
      ],
    );
  }
}