import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('OverFlowBox溢出父容器显示示例'),
      ),
      body: Container(
        color: Colors.green,
        width: 200.0,
        height: 200.0,
        padding: const EdgeInsets.all(50.0),
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxHeight: 400.0,
          maxWidth: 400.0,
          child: Container(
            color: Colors.blueGrey,
            width: 300.0,
            height: 300.0,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: 'overflowbox',
    home: new LayoutDemo(),
  ));
}
