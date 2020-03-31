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
          RaisedButton(
            onPressed: ()=>Navigator.pushNamed(context, "sized"),
            child: Text("尺寸限制类容器 示例"),
          ),
          RaisedButton(
            onPressed: ()=>Navigator.pushNamed(context, "decorated"),
            child: Text("装饰容器 示例"),
          ),
        ],
      ),
    );
  }

}