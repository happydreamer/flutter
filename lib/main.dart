import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        title: 'drawer实例',
        home: new LayoutDemo(),
      ),
    );

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('抽屉组件'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //设置用户信息头像用户名邮箱等
            UserAccountsDrawerHeader(
              accountName: new Text('亭亭'),
              accountEmail: new Text('1826265107@qq.com'),
              //设置当前用户头像
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage('images/2.0x/6.jpg'),
              ),
              onDetailsPressed: () {},
              otherAccountsPictures: <Widget>[
                new Container(
                  child: Image.asset('images/2.0x/7.jpg'),
                ),
              ],
            ),
            ListTile(
              leading: new CircleAvatar(child: Icon(Icons.color_lens)), //导航栏菜单
              title: Text('个性装扮'),
            ),
            ListTile(
              leading: new CircleAvatar(child: Icon(Icons.photo)),
              title: Text('我的相册'),
            ),
            ListTile(
              leading: new CircleAvatar(child: Icon(Icons.wifi)),
              title: Text('免流浪特权'),
            ),
          ],
        ),
      ),
    );
  }
}
