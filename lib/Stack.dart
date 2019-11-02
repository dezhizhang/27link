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
            Positioned(
              top: 10,
              left: 20,
              child: Icon(Icons.home,color: Colors.white),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Icon(Icons.search,color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
  
}
