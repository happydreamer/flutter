import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

//MyApp不需要做状态处理，所以此组件继承StatelessWidget即可
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //此组件是整个应用的主组件
    return new MaterialApp(
      title: '使用第三方包示例',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('使用第三方包示例'),
        ),
        body: new Center(
          child: new RaisedButton(
            onPressed: () {
              //指定url并发起请求
              const url = 'https://www.baidu.com';
              launch(url);
            },
            child: new Text('打开百度'),
          ),
        ),
      ),
    );
  }
}
