import 'package:flutter/material.dart';
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
  var time = DateTime.now();
  _showDatePicker() async {
   DatePicker.showDatePicker(
      context,
      minDateTime: DateTime.parse('2019-10-12'),
      maxDateTime: DateTime.parse('2021-12-10'),
      initialDateTime: DateTime.parse('2019-12-10'),ss
      dateFormat: 'yy年M月d日    EEE,H时:m分',
      locale: DateTimePickerLocale.zh_cn,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
      ),
      pickerMode: DateTimePickerMode.datetime,
      onChange: (dateTime, List<int> index) {
        
      },
      onConfirm: (dateTime, List<int> index) {
        
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