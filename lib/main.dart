import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Align对齐布局示例'),
      ),
      body: new Stack(
        children: <Widget>[
          //左上角
          new Align(
            alignment: new FractionalOffset(0.0, 0.0),
            child: new Image.asset(
              'images/2.0x/1.jpg',
              width: 100.0,
              height: 100.0,
            ),
          ),
          //右上角
          new Align(
            alignment: FractionalOffset(1.0, 0.0),
            child: new Image.asset(
              'images/2.0x/2.jpg',
              width: 100.0,
              height: 100.0,
            ),
          ),
          //水平垂直反向居中
          new Align(
            alignment: FractionalOffset.center,
            child: new Image.asset(
              'images/2.0x/4.jpg',
              width: 100.0,
              height: 100.0,
            ),
          ),
          new Align(
            alignment: FractionalOffset.bottomLeft,
            child: new Image.asset(
              'images/2.0x/5.jpg',
              width: 100.0,
              height: 100.0,
            ),
          ),
          //右下角
          new Align(
            alignment: FractionalOffset.bottomRight,
            child: new Image.asset(
              'images/2.0x/6.jpg',
              width: 100.0,
              height: 100.0,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    new MaterialApp(
      title: 'Align对齐方式显示',
      home: new LayoutDemo(),
    ),
  );
}
