import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Tabs(),
     
      theme: ThemeData(
        primaryColor: Colors.pink
      ),
    );
  }
}



class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int currentIndex = 0;
  List list = [
    Home(),
    CateGory(),
    Search(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: this.list[this.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.currentIndex,
        onTap: (int index) {
          setState(() {
           this.currentIndex = index; 
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('查找')
          )
        ],
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('hello')
      ],
    );
  }
}


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('home');
  }
  
}


class CateGory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('category');
  }
}

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('search');
  }
  
}
