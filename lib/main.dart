import 'package:flutter/material.dart';

void main() => runApp(new LoginPage());

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 全局key用来获取Form表单组件
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();
  // 用户名
  String userName;
  //密码
  String password;
  //验证码
  String validateCode;

  void login() {
    //读取当前的Form状态
    var loginForm = loginKey.currentState;
    //验证表单
    if (loginForm.validate()) {
      loginForm.save();
      print('这是我的用户名密码');
      print('userName:' + userName + 'password:' + password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Form表单',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Form表单示例'),
        ),
        body: new Column(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.all(10.0),
              child: new Form(
                key: loginKey,
                child: new Column(
                  children: <Widget>[
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: '请输入用户名',
                      ),
                      onSaved: (value) => {
                        userName = value,
                      },
                      onFieldSubmitted: (value) => {},
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: '请输入密码',
                      ),
                      obscureText: true,
                      //验证表单方法
                      validator: (value) {
                        return value.length < 6 ? '密码长度不够6位' : null;
                      },
                      onSaved: (value) {
                        password = value;
                      },
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: '请输入验证码',
                      ),
                    )
                  ],
                ),
              ),
            ),
            new SizedBox(
              width: 140.0,
              height: 42.0,
              child: new RaisedButton(
                onPressed: login,
                child: new Text(
                  '登录',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
