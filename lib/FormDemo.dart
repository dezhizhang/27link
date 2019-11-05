import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  FormDemo({Key key}) : super(key: key);

  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('登记系统'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primaryColor: Colors.pink
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
  int sex = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: '请输入信息'
              ),
              onChanged: (value) {
                setState(() {
                  this.userName = value;
                });
              },
            ),
            Row(
              children: <Widget>[
                Text('男'),
                Radio(
                  value: 1,
                  onChanged: (value) {
                    setState(() {
                     this.sex = value; 
                    });
                  },
                  groupValue: this.sex,
                ),
                SizedBox(width: 20,),
                Text('女'),
                Radio(
                  value: 2,
                  onChanged: (value) {
                    setState(() {
                     this.sex = value; 
                    });
                  },
                  groupValue: this.sex,
                )
              ],
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                child: Text('登录'),
                color: Colors.pink,
                textColor: Colors.white,
                onPressed: () {
                  print(this.userName);
                  print(this.sex);
                  
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}