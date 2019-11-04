import 'package:flutter/material.dart';

class TextFild extends StatefulWidget {
  TextFild({Key key}) : super(key: key);

  @override
  _TextFildState createState() => _TextFildState();
}

class _TextFildState extends State<TextFild> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello'),
        ),
        body: Text('hello'),
      )
    );
  }
}