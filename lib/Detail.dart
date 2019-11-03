import 'package:flutter/material.dart';

class Detail extends StatelessWidget{
  final arguments;
  Detail({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('详情页'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: '热门'),
                Tab(text: '推荐',)
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('热门'),
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('推荐'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

