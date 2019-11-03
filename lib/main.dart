import 'package:flutter/material.dart';
import './Search.dart';
import './Detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  final routes = {
    '/search':(context) => Search(),
    '/detail':(context,{arguments}) => Detail(arguments: arguments)
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: HomeContent(),
      ),
      onGenerateRoute: (RouteSettings settings) {
        final String name = settings.name;
        final Function pageContentBuilder = this.routes[name];
        if(pageContentBuilder != null) {
          if(settings.arguments !=null) {
            final Route route = MaterialPageRoute(
              builder: (context) => pageContentBuilder(context,arguments:settings.arguments)
            );
            return route;
          } else {
            final Route route = MaterialPageRoute(
              builder: (context) => pageContentBuilder(context)
            );
            return route;
          }
        }
      },
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('详情'),
            color: Colors.pink,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/detail',arguments: {
                'id':123
              });
            },
          )
        ],
      ),
    );
  }
  
}
