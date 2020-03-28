

import 'package:flutter/material.dart';

class PaddingDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("填充 示例"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16), //上下左右各添加16像素补白
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //显式指定对齐方式为左对齐，排除对齐干扰
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 8),  //左边添加8像素补白
              child: Text("Hello world"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),  //上下各添加8像素补白
              child: Text("I am Jack"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0,.0,20.0,20.0),  // 分别指定四个方向的补白
              child: Text("Your friend"),
            ),
          ],
        ),
      ),
    );
  }

}