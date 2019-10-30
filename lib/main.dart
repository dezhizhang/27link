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

class HomeContent extends StatelessWidget{
  List list = ['123','345','789','123'];
  List<Widget> _getData() {
    return list.map((value){
      return ListTile(
        title: Text(value),
      );
    }).toList();

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView(
        children: this._getData(),
      ),
    );
  }
  
}
