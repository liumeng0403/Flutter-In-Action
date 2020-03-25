import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow, //  定义 container 的背景色
          border: Border.all(
            //  定义 container 边框颜色
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
        padding: EdgeInsets.all(10),  //  内边距
        margin: EdgeInsets.all(10),  //  外边距
        transform: Matrix4.rotationZ(.3),  //   旋转
        child: Text(
          "我是一个文本."*10,
          textAlign: TextAlign.left,
          overflow: TextOverflow.fade,
          textScaleFactor: 2,
          maxLines: 1,
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5,
          ),
        ),
      ),
    );
  }
}
