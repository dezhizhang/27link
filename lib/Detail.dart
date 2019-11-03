import 'package:flutter/material.dart';

class Detail extends StatelessWidget{
  final arguments;
  Detail({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('详情页${this.arguments}'),
        ),
        body: Text('hello')
      ),
    );
  }
}