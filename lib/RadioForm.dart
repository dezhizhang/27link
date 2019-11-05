import 'package:flutter/material.dart';

class RadioForm extends StatefulWidget {
  RadioForm({Key key}) : super(key: key);

  @override
  _RadioFormState createState() => _RadioFormState();
}

class _RadioFormState extends State<RadioForm> {
  int sex = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('radio'),
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
  int sex = 1;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Row(
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
           Radio(
             value: 2,
             onChanged: (value) {
               setState(() {
                this.sex = value; 
               });
             },
             groupValue: this.sex,
           ),
           Switch(
             value: this.flag,
             onChanged: (value) {
               setState(() {
                this.flag = value; 
               });
             },
           )
         ],
       ),
    );
  }
}

