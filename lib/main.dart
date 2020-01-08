import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[
      new ListTile(
        title: new Text(
          '河南省周口市西华县',
          style: new TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
          ),
        ),
        subtitle: new Text('是颖宝呀'),
        leading: new Icon(
          Icons.fastfood,
          color: Colors.orange,
        ),
      ),
      new ListTile(
        title: new Text(
          '以后少说话，不要轻易插嘴好不好',
          style: new TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
          ),
        ),
        subtitle: new Text('是盛世美颜我姐姐'),
        leading: new Icon(
          Icons.airplay,
          color: Colors.blue,
        ),
      ),
      new ListTile(
        title: new Text(
          '你的眼里有日月星辰',
          style: new TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
          ),
        ),
        subtitle: new Text('是我的楚乔大大'),
        leading: new Icon(
          Icons.local_hospital,
          color: Colors.green,
        ),
      ),
      new ListTile(
        title: new Text(
          '你的眼里有日月星辰',
          style: new TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
          ),
        ),
        subtitle: new Text('是我的楚乔大大'),
        leading: new Icon(
          Icons.computer,
          color: Colors.deepPurple,
        ),
      ),
    ];
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ListView布局示例'),
      ),
      body: new Center(
        child: new ListView(
          children: list,
        ),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: '列表以及表格布局ListView',
    home: new LayoutDemo(),
  ));
}
