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
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text('取消'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      }
    );
  }
  _simpleDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('请选择'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('option A'),
              onPressed: () {
                print('option A');
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              child: Text('Option B'),
              onPressed: () {
                print('option B');
                Navigator.pop(context);
              },
            )
          ],
        );
      }
    );
  }

  _modelBottomSheet() {
    showModalBottomSheet(
      context:context,
      builder: (context) {
        return Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('分享A'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('分享B'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
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
        ),
        RaisedButton(
          child: Text('simpleDialog'),
          color: Colors.green,
          onPressed: _simpleDialog,
        ),
        RaisedButton(
          child: Text('modelBottomSheet'),
          onPressed: _modelBottomSheet,
        )
      ],
    );
  }
}