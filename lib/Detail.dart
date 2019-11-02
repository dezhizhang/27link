import 'package:flutter/material.dart';

class Detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('详情页'),
        ),
        body: DetailContent(),
      ),
    );
  }
}


class DetailContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('详情页'),
    );
  }
  
}