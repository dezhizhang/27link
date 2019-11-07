import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class NetWork extends StatefulWidget {
  NetWork({Key key}) : super(key: key);

  @override
  _NetWorkState createState() => _NetWorkState();
}

class _NetWorkState extends State<NetWork> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('网络检测'),
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
  var subscription;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if(result == ConnectivityResult.wifi) {
        print('wifi');
      } else if(result == ConnectivityResult.mobile) {
        print('4G');
      }
    });
  }
  @override
  dispose() {
    super.dispose();
    subscription.cancel();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('hello'),
    );
  }
}