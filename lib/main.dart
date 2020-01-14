import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('BoxDecoration装饰盒子背景图示例'),
      ),
      body: new Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: Colors.white,
            //添加所有的边框，处理颜色为灰色，宽度4.0
            border: Border.all(color: Colors.grey, width: 4.0),
            //添加边框弧度，这样会有一个圆弧效果
            borderRadius: BorderRadius.circular(36.0),
            image: DecorationImage(
              image: ExactAssetImage('images/2.0x/2.jpg'),
              fit: BoxFit.cover, //填充类型
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: 'BoxDecoration装饰盒子背景图示例',
    home: new LayoutDemo(),
  ));
}
