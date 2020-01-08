import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'ROW水平布局示例',
      home: new LayoutDemo(),
    ),
  );
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('垂直布局示例'),
      ),
      body: new Column(
        // children: <Widget>[
        //   new Text('Flutter'),
        //   new Text('垂直布局'),
        //   new Expanded(
        //     child: new FittedBox(
        //       fit: BoxFit.contain,
        //       child: const FlutterLogo(),
        //     ),
        //   )
        // ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Text('Flutter谷歌移动端开发框架'),
          new Text('Flutter谷歌移动端开发框架'),
          new Text('Flutter谷歌移动端开发框架'),
          new Text('Flutter谷歌移动端开发框架'),
          new Text('Flutter谷歌移动端开发框架'),
          new Text('Flutter谷歌移动端开发框架'),
        ],
      ),
    );
  }
}
