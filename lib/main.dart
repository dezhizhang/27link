import 'package:flutter/material.dart';
import './Detail.dart';
import './Search.dart';

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
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('跳到搜索'),
            color: Colors.pink,
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Search()
                )
              );
            },
          ),
          RaisedButton(
            child: Text('跳到详情'),
            color: Colors.green,
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder:(context) => Detail()
                )
              );
            },
          )
        ],
      ),
    );
  }
  
}
