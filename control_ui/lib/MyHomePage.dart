import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}