import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qiai/container.dart';

void main() {
  runApp(MyApp());
}


// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('你好flutter'),
//         ),
//         body: HomeContent(),

//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         width: 300,
//         height: 300,
//          child: Image.network(
//            'https://www.eureka.net.cn/public/admin/upload/2019-10-27/1572176387116.jpg',
//            fit: BoxFit.cover,
//            ),
//       ),
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
          title: Text('张德志你好'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 300,
        height: 300,
        child: Image.network('https://www.eureka.net.cn/public/admin/upload/2019-10-27/1572176387116.jpg',
          fit: BoxFit.cover,
        ),  
      ),
    );
  }
  
}








