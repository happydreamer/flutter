import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

//MyApp不需要做状态处理，所以此组件继承StatelessWidget即可
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //此组件是整个应用的主组件
    return new MaterialApp(
      title: 'http请求示例',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('http请求示例'),
        ),
        body: new Center(
          child: new RaisedButton(
            onPressed: () {
              //指定url并发起请求
              const url = 'https://httpbin.org/';
              //向https://httpbin.org/发起get请求
              http.get(url).then((response) {
                print("状态: ${response.statusCode}");
                print("正文：${response.body}");
              });
            },
            child: new Text('发起http请求'),
          ),
        ),
      ),
    );
  }
}
