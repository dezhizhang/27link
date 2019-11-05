import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';


class DatePick extends StatefulWidget {
  DatePick({Key key}) : super(key: key);

  @override
  _DatePickState createState() => _DatePickState();
}

class _DatePickState extends State<DatePick> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('时间'),
        ),
        body: HomeContent(),
      )
    );
  }
}

class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  var  time = new DateTime.now();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  _showDatePicker() async {
    var result = await showDatePicker(
      context: context,
      initialDate: time,
      firstDate: DateTime(1970),
      lastDate: DateTime(2020)
    );
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('2018-12-19'),
              Icon(Icons.arrow_drop_down),
            ],
          ),
          onTap: this._showDatePicker()
        )
      ],
    );
  }
}