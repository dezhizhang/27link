import 'package:flutter/material.dart';

import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';



class ThreeData extends StatefulWidget {
  ThreeData({Key key}) : super(key: key);

  @override
  _ThreeDataState createState() => _ThreeDataState();
}

class _ThreeDataState extends State<ThreeData> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('时间组件'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primaryColor: Colors.green
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
 DateTime _dateTime=DateTime.now();

  _showDatePicker(){
      DatePicker.showDatePicker(
          context,
          pickerTheme: DateTimePickerTheme(
            showTitle: true,
            confirm: Text('确定', style: TextStyle(color: Colors.red)),
            cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
          ),
          minDateTime: DateTime.parse("1980-05-12"),
          maxDateTime: DateTime.parse("2100-05-12"),
          initialDateTime: _dateTime,
          // dateFormat: "yyyy-MMMM-dd",

          dateFormat:'yyyy年M月d日    EEE,H时:m分',  // show TimePicker
          pickerMode: DateTimePickerMode.datetime,  // show TimePicker

           
          locale: DateTimePickerLocale.zh_cn,
          onCancel: () {
            debugPrint('onCancel');
          },         
          onConfirm: (dateTime, List<int> index) {
            setState(() {
              _dateTime = dateTime;
            });
          },
      );  
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
            InkWell(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('2018')
              ],
            ),
            onTap: _showDatePicker
           )
           
         ],
       ),
    );
  }
}