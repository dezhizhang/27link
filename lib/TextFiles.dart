import 'package:flutter/material.dart';


class TextFiles extends StatefulWidget {
  TextFiles({Key key}) : super(key: key);

  @override
  _TextFilesState createState() => _TextFilesState();
}

class _TextFilesState extends State<TextFiles> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello'),
        ),
        body: Text('hello'),
      ),
    );
  }
}