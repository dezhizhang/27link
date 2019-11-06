import 'package:flutter/material.dart';

class DilogDemo extends StatefulWidget {
  DilogDemo({Key key}) : super(key: key);

  @override
  _DilogDemoState createState() => _DilogDemoState();
}

class _DilogDemoState extends State<DilogDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('弹框'),
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
  _alertDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('提示信息'),
          content: Text('你确定要删除吗'),
          actions: <Widget>[
            FlatButton(
              child: Text('确定'),
              onPressed: (){
                //  print('确定');
                Navigator.pop(context);
              },
            ),
          
            FlatButton(
              child: Text('取消'),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ],
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('alertDialog'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: _alertDialog
        )
      ],
    );
  }
}