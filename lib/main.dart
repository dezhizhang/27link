import 'package:flutter/material.dart';
import './Search.dart';
import './Detail.dart';

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
          title: Text('hello'),
        ),
        body: HomeContent(),
      ),
      routes: {
        '/search':(context) => Search(),
        '/detail':(context) => Detail()
      },
      
    );
  }
  
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('搜索'),
            color: Colors.pink,
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          ),
          RaisedButton(
            child: Text('详情'),
            color: Colors.green,
            onPressed: () {
              Navigator.pushNamed(context, '/detail');
            },
          )
        ],
      ),
    );
  }
  
}

