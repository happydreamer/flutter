import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//MyApp不需要做状态处理，所以此组件继承StatelessWidget即可
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //此组件是整个应用的主组件
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
          //自定义主题
          primarySwatch: Colors.blue),
      home: new MyHomePage(title: 'Flutter Demo HomePage Demo'),
    );
  }
}

// 主页需要继承StatefulWidget
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  //标题
  final String title;
  //必须重写createState方法
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

//状态类必须继承state类，注意后面需要指定为<MyHomePage>
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; //计数器
  void _incrementCounter() {
    //调用State类里边的setState方法来更改状态值，使得计数值加1
    setState(() {
      // 计数器变量，每次点击加1
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        //垂直布局
        child: new Column(
          //主轴居中对齐
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'you have push the button manyTimes:',
            ),
            new Text(
              '$_counter', //绑定计数器的值
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter, //按下+号按钮调用自增函数
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
