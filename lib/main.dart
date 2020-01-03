import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('文本组件'),
      ),
      body: new Column(
        children: <Widget>[
          new Text(
            '红色 + 黑色 删除线 +25号字体',
            style: new TextStyle(
              color: const Color(0xffff0000),
              decoration: TextDecoration.lineThrough,
              decorationColor: const Color(0xff000000),
              fontSize: 25.0,
            ),
          ),
          new Text(
            '橙色 + 下划线 +24号字体',
            style: new TextStyle(
              color: const Color(0xffff9900),
              decoration: TextDecoration.underline,
              fontSize: 24.0,
            ),
          ),
          new Text(
            '虚线+倾斜+23',
            style: new TextStyle(
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dashed,
              fontSize: 23.0,
              fontStyle: FontStyle.italic,
            ),
          ),
          new Text('加粗 +24',
              style: new TextStyle(
                fontSize: 24.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                letterSpacing: 6.0,
              ))
        ],
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: 'text Demo',
    home: new ContainerDemo(),
  ));
}
