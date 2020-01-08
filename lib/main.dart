import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Card布局示例',
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new SizedBox(
      height: 250.0,
      child: new Card(
        child: new Column(
          children: <Widget>[
            new ListTile(
              title: new Text(
                '河南省周口市西华县大王庄乡朱庄村',
                style: new TextStyle(fontWeight: FontWeight.w300),
              ),
              subtitle: new Text('创想科技有限公司'),
              leading: new Icon(
                Icons.home,
                color: Colors.lightBlue,
              ),
            ),
            new Divider(),
            new ListTile(
              title: new Text(
                '河南省周口市西华县大王庄乡朱庄村',
                style: new TextStyle(fontWeight: FontWeight.w300),
              ),
              subtitle: new Text('是我的家啊'),
              leading: new Icon(
                Icons.school,
                color: Colors.lightBlue,
              ),
            ),
            new Divider()
          ],
        ),
      ),
    );
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Card布局示例'),
      ),
      body: new Center(
        child: card,
      ),
    );
  }
}
