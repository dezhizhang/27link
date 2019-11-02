import 'package:flutter/material.dart';

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('搜索页'),
        ),
        body: SearchContent(),
      ),
    );
  }

}

class SearchContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('搜索页'),
    );
  }
  
}