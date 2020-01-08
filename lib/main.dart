import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'FittedBox布局示例',
      home: new LayoutDemo(),
    ),
  );
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('FittedBox布局示例'),
      ),
      body: new Container(
        color: Colors.grey,
        width: 250.0,
        height: 250.0,
        child: new FittedBox(
          fit: BoxFit.contain, //改变填充属性
          alignment: Alignment.topLeft,
          child: new Container(
            color: Colors.deepOrange,
            child: new Text('缩放布局'),
          ),
        ),
      ),
    );
  }
}
