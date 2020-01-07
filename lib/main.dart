import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FloatButton扁平按钮组件'),
        ),
        body: Center(
          child: FlatButton(
            onPressed: () {},
            child: Text(
              'FlatButton',
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
      ),
    );
  }
}
