import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';

class Equipment extends StatefulWidget {
  Equipment({Key key}) : super(key: key);

  @override
  _EquipmentState createState() => _EquipmentState();
}

class _EquipmentState extends State<Equipment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('获取设备信息'),
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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getData();
  }
  _getData() async{
    var deviceInfo = DeviceInfoPlugin();
    var androidInfo = await deviceInfo.androidInfo;
    print('Running on ${androidInfo.model}');
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('hello'),
    );
  }
}