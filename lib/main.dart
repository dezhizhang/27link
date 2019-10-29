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

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          ListTile(
            title: Text('俣哈'),
            subtitle: Text('哈哈哈俣只哈俣俣合哈哈哈'),
          )
        ],
      ),
    );
  }
  
}










