import 'package:flutter/material.dart';
import 'package:flutetr/cupertino.dart';

void mian() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CupertinoActivityIndicator示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CupertinoActivityIndicator示例'),
        ),
        body: Center(
          child: CupertinoActivityIndicator(
            radius: 60.0,
          ),
        ),
      ),
    );
  }
}
