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

class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Chip(
          label: Text('${this.number}'),
        ),
        RaisedButton(
          child: Text('增加'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {
            setState(() {
             this.number++; 
            });
          },
        )
      ],
    );
  }
}