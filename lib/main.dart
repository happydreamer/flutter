import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = '基础列表示例';
    return MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView(
          //添加静态数据
          children: <Widget>[
            ListTile(
              //添加图标
              leading: Icon(Icons.alarm),
              //添加文本
              title: Text('Alarm'),
            ),
            ListTile(
              //添加图标
              leading: Icon(Icons.phone),
              //添加文本
              title: Text('phone'),
            ),
            ListTile(
              //添加图标
              leading: Icon(Icons.airplay),
              //添加文本
              title: Text('airplay'),
            ),
            ListTile(
              //添加图标
              leading: Icon(Icons.alarm),
              //添加文本
              title: Text('Alarm'),
            ),
            ListTile(
              //添加图标
              leading: Icon(Icons.alarm),
              //添加文本
              title: Text('Alarm'),
            ),
            ListTile(
              //添加图标
              leading: Icon(Icons.alarm),
              //添加文本
              title: Text('Alarm'),
            ),
            ListTile(
              //添加图标
              leading: Icon(Icons.alarm),
              //添加文本
              title: Text('Alarm'),
            ),
            ListTile(
              //添加图标
              leading: Icon(Icons.alarm),
              //添加文本
              title: Text('Alarm'),
            ),
            ListTile(
              //添加图标
              leading: Icon(Icons.alarm),
              //添加文本
              title: Text('Alarm'),
            ),
            ListTile(
              //添加图标
              leading: Icon(Icons.alarm),
              //添加文本
              title: Text('Alarm'),
            ),
            ListTile(
              //添加图标
              leading: Icon(Icons.alarm),
              //添加文本
              title: Text('Alarm'),
            ),
          ],
        ),
      ),
    );
  }
}
