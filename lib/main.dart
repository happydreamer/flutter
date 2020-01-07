import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBor示例'),
        ),
        body: Center(
          child: Text(
            'SnackBor示例',
            style: TextStyle(fontSize: 28.0),
          ),
        ),
        floatingActionButton: new Builder(builder: (BuildContext context) {
          return new FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              //点击回调事件，弹出一条提示语
              Scaffold.of(context).showSnackBar(new SnackBar(
                content: new Text('显示SnackBar'),
              ));
            },
            shape: new CircleBorder(),
          );
        }),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.endFloat, //居中放置
      ),
    );
  }
}
