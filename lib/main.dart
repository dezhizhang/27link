import 'package:flutter/material.dart';
import './Search.dart';
import './Detail.dart';
import './TabBars.dart';
import './FormInfo.dart';
import './Checked.dart';
import './RadioForm.dart';
import './FormDemo.dart';
import './DatePick.dart';
import './ThreeData.dart';
import './Swiper.dart';
import './Dilog.dart';
import './CustomDialog.dart';

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
    '/info':(context) => FormDemo(),
    '/time':(context) => DatePick(),
    '/three':(context) => ThreeData(),
    '/swiper':(context) => SwiperDemo(),
    '/dilog':(context) => DilogDemo(),
    '/custrom':(context) => CustomDialog()
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
          ),
          RaisedButton(
            child: Text('信息登记'),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/info');
            },
          ),
          RaisedButton(
            child: Text('时间'),
            color: Colors.pink,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/time');
            },
          ),
          RaisedButton(
            child: Text('第三方时间'),
            color: Colors.green,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/three');
            },
          ),
          RaisedButton(
            child: Text('swiper'),
            color: Colors.pink,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/swiper');
            },
          ),
          RaisedButton(
            child: Text('弹框'),
            color: Colors.green,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/dilog');
            },
          ),
          RaisedButton(
            child: Text('自定义弹框'),
            color: Colors.yellow,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/custrom');
            },
          )
        ],
      ),
    );
  }
  
}
