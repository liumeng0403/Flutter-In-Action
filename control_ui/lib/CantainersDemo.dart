import 'package:flutter/material.dart';

class CantainersDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("容器 示例"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: ()=>Navigator.pushNamed(context, "padding"),
            child: Text("填充 示例"),
          ),
        ],
      ),
    );
  }

}