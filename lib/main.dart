import 'package:flutter/material.dart';
import './Search.dart';
import './Detail.dart';
import './TabBars.dart';
import './FormInfo.dart';
import './Checked.dart';
import './RadioForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  final routes = {
    '/search':(context) => Search(),
    '/detail':(context,{arguments}) => Detail(arguments: arguments),
    '/tabbar':(context) => TabBars(),
    '/form':(context) => FormInfo(),
    '/checked':(context) => Checked(),
    '/radio':(context) => RadioForm(),
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
          ),
          RaisedButton(
            child: Text('顶部导航'),
            color: Colors.green,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/tabbar');
            },
          ),
          RaisedButton(
            child: Text('表单'),
            color: Colors.pink,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/form');
            },
          ),
          RaisedButton(
            child: Text('单选框'),
            color: Colors.green,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/checked');
            },
          ),
          RaisedButton(
            child: Text('radio'),
            color: Colors.pink,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/radio');
            },
          )
          
        ],
      ),
    );
  }
  
}
