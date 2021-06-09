import 'package:flutter/material.dart';
import 'package:wangbl_flutter/day4/FavoriteWidget.dart';

///用来实现 下图的效果 https://flutterchina.club/tutorials/layout/images/lakes.jpg
class Day3App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //定义个标题行
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  'Oeschinen Lake Campground',
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              new Text(
                'Kandersteg, Switzerland',
                style: new TextStyle(color: Colors.grey[500]),
              )
            ],
          )),
          //new Icon(
          //Icons.star,
          //color: Colors.red[500],
          //),//new Text('41')

          new FavoriteWidget(),
        ],
      ),
    );

    Column buildButtonColumn(IconData iconData, String lable) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(
            iconData,
            color: color,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 8),
            child: new Text(
              lable,
              style: new TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w400, color: color),
            ),
          )
        ],
      );
    }

    Widget buildSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildButtonColumn(Icons.call, 'Call'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );
    Widget buildText = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        ''' 
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
          ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter 第三天',
      home: new Scaffold(
        body: new ListView(
          children: [
            new Image.asset(
              'images/lake.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buildSection,
            buildText
          ],
        ),
      ),
    );
  }
}
