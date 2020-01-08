import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'IndexedStateStack布局示例',
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new IndexedStack(
      index: 1, //设置索引值
      alignment: const FractionalOffset(0.2, 0.2),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new AssetImage('images/2.0x/4.jpg'),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.black38,
          ),
          child: new Text(
            '盛世美颜我姐姐',
            style: new TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Stack层叠布局示例'),
      ),
      body: new Center(
        child: stack,
      ),
    );
  }
}
