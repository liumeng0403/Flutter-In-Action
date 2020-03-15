import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮"),
      ),
      body: Column(
        children: <Widget>[
          // RaisedButton
          RaisedButton(
            child: Text("normal"),
            onPressed: (){},
          ),
          // FlatButton
          FlatButton(
            child: Text("normal"),
            onPressed: (){},
          ),
          // OutlineButton
          OutlineButton(
            child: Text("normal"),
            onPressed: (){},
          ),
          // IconButton
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: (){},
          ),
          // 带图标的按钮
          RaisedButton.icon(
              onPressed: (){},
              icon: Icon(Icons.send),
              label: Text("发送")
          ),
          OutlineButton.icon(
              onPressed: (){},
              icon: Icon(Icons.add),
              label: Text("添加")
          ),
          FlatButton.icon(
              onPressed: (){},
              icon: Icon(Icons.info),
              label: Text("详情"),
          ),
          // 自定义按钮外观
          FlatButton(
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            child: Text("Submit"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            onPressed: (){},
          ),
          RaisedButton(
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            child: Text("Submit2"),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            onPressed: (){},
          ),
        ],
      ),
    );
  }

}