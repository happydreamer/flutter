import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        title: 'scafflod脚手架组件实例',
        home: new LayoutDemo(),
      ),
    );

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //头部元素 比如：左侧返回按钮，中间标题，右侧菜单
      appBar: new AppBar(
        title: Text('scafflod脚手架组件实例'),
      ),
      // 视图内容部分
      body: Center(
        child: Text('scafflod'),
      ),
      //底部导航栏
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50.0),
      ),
      //添加FAB按钮
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: '增加',
        child: Icon(Icons.add),
      ),
      // FAB按钮居中显示
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
