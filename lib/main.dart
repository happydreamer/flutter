import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: '滚动布局示例',
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('滚动布局示例'),
      ),
      body: new ListView(
        children: <Widget>[
          new Center(
            child: new Text(
              '\n广州市天河区公园',
              style: new TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
          new Center(
            child: new Text(
              '天河公园',
              style: new TextStyle(fontSize: 16.0),
            ),
          ),
          new Center(
            child: new Text(
              '''
              赵丽颖，1987年10月16日出生于河北省廊坊市，中国内地影视女演员、歌手。2006年，因获得雅虎搜星比赛冯小刚组冠军而进入演艺圈；同年，在冯小刚执导的广告片《跪族篇》中担任女主角。2011年，因在古装剧《新还珠格格》中饰演晴儿一角而被观众认识。2013年，凭借古装剧《陆贞传奇》获得更多关注。2014年10月，在第10届金鹰电视艺术节举办的投票活动中被选为“金鹰女神”；12月，凭借都市爱情剧
              ''',
              style: new TextStyle(
                fontSize: 14.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
