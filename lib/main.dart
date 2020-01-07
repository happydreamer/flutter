import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FloattingActionButton示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FloattingActionButton示例'),
        ),
        body: Center(
          child: Text(
            'FloattingActionButton示例',
            style: TextStyle(fontSize: 28.0),
          ),
        ),
        floatingActionButton: new Builder(builder: (BuildContext context) {
          return new FloatingActionButton(
            child: const Icon(Icons.add),
            //提示信息
            tooltip: '请点击FloatingActionButton',
            //前背景颜色为白色
            foregroundColor: Colors.white,
            //背景颜色为蓝色
            backgroundColor: Colors.blue,
            //未点击阴影值
            elevation: 7.0,
            //点击阴影值
            highlightElevation: 14.0,
            onPressed: () {
              //点击回调事件，弹出提示语
              Scaffold.of(context).showSnackBar(new SnackBar(
                content: new Text('你点击了FloatingActionButton'),
              ));
            },
            mini: false,
            //圆形边
            shape: new CircleBorder(),
            isExtended: false,
          );
        }),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked, //居中放置
      ),
    );
  }
}
