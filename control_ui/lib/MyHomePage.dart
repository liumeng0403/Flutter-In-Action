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
              onPressed: ()=>Navigator.pushNamed(context, "basic"),
              child: Text("基础组件 示例"),
            ),
            RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "layout"),
              child: Text("布局 示例"),
            ),
            RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "box"),
              child: Text("容器 示例"),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}