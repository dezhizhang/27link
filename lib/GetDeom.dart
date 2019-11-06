import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'dart:convert';

class GetDemo extends StatefulWidget {
  GetDemo({Key key}) : super(key: key);

  @override
  _GetDemoState createState() => _GetDemoState();
}

class _GetDemoState extends State<GetDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GET请求'),
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

  _getData() async{
    var dio = new Dio();
    var url = 'https://www.eureka.net.cn/api/product/list';
    var response = await dio.get(url);
    print(response);

  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           RaisedButton(
             child: Text('get获取数据'),
             color: Colors.blue,
             textColor: Colors.white,
             onPressed: _getData
           )
         ],
       )
    );
  }
}