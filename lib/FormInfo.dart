import 'package:flutter/material.dart';

class FormInfo extends StatefulWidget {
  FormInfo({Key key}) : super(key: key);

  @override
  _FormInfoState createState() => _FormInfoState();
}

class _FormInfoState extends State<FormInfo> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello'),
        ),
        body: HomeContent()
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
  String userName;
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: '请输入内容',
                border: OutlineInputBorder()
              ),
              onChanged: (value) {
                setState(() {
                  this.userName = value; 
                });
              },
            ),
            RaisedButton(
              child: Text('登录'),
              color: Colors.pink,
              textColor: Colors.white,
              onPressed: () {
                print(this.userName);
              },
            )
         ],
       ),
    );
  }
}

