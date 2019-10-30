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
          title: Text('你好'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primaryColor: Colors.pink
      ),
    );
  }
  
}

//  class HomeContent extends StatelessWidget{
//   List list = [];
//   HomeContent() {
//     for(var i=0;i<20;i++) {
//       list.add('我是第$i条数据');
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       child: ListView.builder(
//         itemCount: this.list.length,
//         itemBuilder: (context,index) {
//           return ListTile(
//             title: Text(this.list[index]),
//           );
//         },
//       ),
//     );
//   }
   
//  }

class HomeContent extends StatelessWidget{
  List list = [];
  HomeContent() {
    for(var i=0;i<30;i++) {
      list.add('我是第$i条数据');
    }
    
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView.builder(
        itemCount: this.list.length,
        itemBuilder: (context,index) {
          return ListTile(
            title: Text(this.list[index]),
          );
        },
      ),
    );
  }

}