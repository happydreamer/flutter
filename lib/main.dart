import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: '层叠定位布局示例',
      home: new MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('层叠定位布局示例'),
      ),
      body: new Center(
        child: new Stack(
          children: <Widget>[
            //添加网络图片
            new Image.network(
                'http://pic27.nipic.com/20130304/7368717_232014122100_2.jpg'),
            //设置定位布局
            new Positioned(
              bottom: 50.0,
              right: 50.0,
              child: new Text(
                'hi Flutter',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'serif',
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
