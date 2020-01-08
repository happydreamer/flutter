import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        title: 'Container容器示例',
        home: new LayoutDemo(),
      ),
    );

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //返回一个Container对象
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Center居中示例'),
      ),
      body: new Center(
        child: new Text(
          'Hello Flutter',
          style: TextStyle(
            fontSize: 36.0,
          ),
        ),
      ),
    );
  }
}
