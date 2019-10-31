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
          title: Text('我是app'),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconContent(Icons.home,color: Colors.red),
        IconContent(Icons.search,color: Colors.yellow),
        IconContent(Icons.dehaze,color: Colors.green)

      ],
    );
  }
 
  
}

class IconContent extends StatelessWidget{
  IconData icon;
  double size = 32;
  Color color = Colors.red;
  IconContent(this.icon,{this.color,this.size});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100,
      height: 100,
      color: this.color,
      child: Center(
        child: Icon(this.icon,size:this.size,color: Colors.white),
      ),
    );
  }
  
}