import 'package:flutter/material.dart';

class Checked extends StatefulWidget {
  Checked({Key key}) : super(key: key);

  @override
  _CheckedState createState() => _CheckedState();
}

class _CheckedState extends State<Checked> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('checkedbox'),
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
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Checkbox(
         value: this.flag,
         onChanged: (value) {
           setState(() {
            this.flag = value; 
           });
         },
       )
    );
  }
}