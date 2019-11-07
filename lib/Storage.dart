import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Storage extends StatefulWidget {
  Storage({Key key}) : super(key: key);

  @override
  _StorageState createState() => _StorageState();
}

class _StorageState extends State<Storage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('本地存诸'),
        ),
        body: HomeContent(),
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
  _saveData() async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt('counter', 123);
  }
  _getData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(prefs.getInt('counter'));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           RaisedButton(
             child: Text('保存数据'),
             color: Colors.pink,
             textColor: Colors.white,
             onPressed: _saveData,
           ),
           RaisedButton(
             child: Text('获取数据'),
             color: Colors.yellow,
             textColor: Colors.white,
             onPressed: _getData,
           )
         ],
       )
    );
  }
}