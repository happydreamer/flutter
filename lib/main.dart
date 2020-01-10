import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Wrap按照宽高自动换行布局示例',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Wrap按照宽高自动换行布局示例'),
      ),
      body: Wrap(
        spacing: 8.0,
        runSpacing: 4.0, //行之间的间隙大小
        children: <Widget>[
          Chip(
            //添加图形头像
            avatar: CircleAvatar(
              backgroundColor: Colors.lightGreen.shade800,
              child: new Text(
                '西门',
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
            ),
            label: Text('西门吹雪'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightBlue.shade700,
              child: new Text(
                '司空',
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
            ),
            label: Text('司空摘星'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightBlue.shade700,
              child: new Text(
                '木婉',
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
            ),
            label: Text('木婉清'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.lightBlue.shade700,
              child: new Text(
                '萧',
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
            ),
            label: Text('萧十一郎'),
          ),
        ],
      ),
    );
  }
}
