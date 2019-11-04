import 'package:flutter/material.dart';

class TabBars extends StatefulWidget {
  TabBars({Key key}) : super(key: key);

  @override
  _TabBarsState createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello'),
        ),
        body: Text('contr'),
      ),
    );
  }
}