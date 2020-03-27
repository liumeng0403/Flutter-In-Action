import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("布局 示例"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "row_column"),
              child: Text("线性布局 示例"),
            ),
            RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "flex"),
              child: Text("弹性布局 示例"),
            ),
            RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "flow"),
              child: Text("流式布局 示例"),
            ),
            RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "stack"),
              child: Text("层叠布局 示例"),
            ),
            RaisedButton(
              onPressed: ()=>Navigator.pushNamed(context, "align"),
              child: Text("对齐与相对定位 示例"),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}