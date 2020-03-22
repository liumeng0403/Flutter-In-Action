import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础组件 示例"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "text"),
              child: Text("文本,字体,字体样式"),
            ),
            RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "button"),
              child: Text("按钮 示例"),
            ),
            RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "image"),
              child: Text("图片 示例"),
            ),
            RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "switch_checkbox"),
              child: Text("单选 复选 示例"),
            ),
            RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "text_form"),
              child: Text("输入框 表单 示例"),
            ),
            RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "focus"),
              child: Text("焦点 示例"),
            ),
            RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "login"),
              child: Text("登录 示例"),
            ),
            RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "progress"),
              child: Text("进度条 示例"),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}