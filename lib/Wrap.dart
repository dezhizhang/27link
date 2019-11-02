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

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Wrap(
      runSpacing: 10,
      spacing: 10,
      children: <Widget>[
        RaisedButton(
          child: Text('哈哈'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {

          },
        ),
        RaisedButton(
          child: Text('呢呢'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {

          },
        )
      ],
    );
  }
  
}

