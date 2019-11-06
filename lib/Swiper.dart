import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperDemo extends StatefulWidget {
  SwiperDemo({Key key}) : super(key: key);

  @override
  _SwiperDemoState createState() => _SwiperDemoState();
}

class _SwiperDemoState extends State<SwiperDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('siper'),
        ),
        body:HomeContent(),
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
  List<Map> imageLisg = [
    {
      'url':'https://www.itying.com/images/flutter/1.png'
    },
    {
      'url':'https://www.itying.com/images/flutter/2.png'
    },
    {
      'url':'https://www.itying.com/images/flutter/3.png'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
       child: new Swiper(
        itemBuilder: (BuildContext context,int index){
          return new Image.network('${imageLisg[index]['url']}',fit: BoxFit.fill,);
        },
        itemCount: imageLisg.length,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}