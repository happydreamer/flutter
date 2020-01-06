import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  //整个应用的主组件
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
      title: 'MaterialApp示例',
      routes: {
        '/first': (BuildContext context) => FirstPage(), //添加路由
        '/second': (BuildContext context) => SecondPage(),
      },
      initialRoute: '/first', //设置初始路由界面
    );
  }
}

//这是一个可改变的widget
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Material示例'),
      ),
      body: Center(
        child: Text(
          '主页',
          style: TextStyle(fontSize: 28.0),
        ),
      ),
    );
  }
}

//第一个路由界面
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('这是第一页'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //路由由第一个页面路由跳转到第二个页面
            Navigator.pushNamed(context, '/second');
          },
          child: Text(
            '这是第一页',
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('这是第二页'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //路由跳转到第一页
            Navigator.pushNamed(context, '/first');
          },
          child: Text(
            '这是第二个页面',
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}
