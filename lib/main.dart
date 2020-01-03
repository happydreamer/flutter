import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: '带交互的图标组件',
    home: new LayoutDemo(),
  ));
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Text('带交互的图标组件'),
        ),
        body: new Center(
          child: new IconButton(
            icon: Icon(Icons.volume_up, size: 48.0),
            tooltip: '按下操作',
            onPressed: () {
              print('按下操作');
            },
          ),
        ));
  }
}
