import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '凸起按钮组件',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('凸起按钮组件'),
        ),
        body: new Center(
          child: new RaisedButton(
            onPressed: () {},
            child: new Text('RaisedButton组件'),
          ),
        ),
      ),
    );
  }
}
