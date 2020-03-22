import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _TextFieldDemoState();

}

class _TextFieldDemoState extends State<TextFieldDemo>{

  TextEditingController _unameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _unameController.addListener((){
      print(_unameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框及表单"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            controller: _unameController,
            decoration: InputDecoration(
              labelText: "用户名",
              hintText: "用户名或邮箱",
              prefixIcon: Icon(Icons.person),
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码",
              prefixIcon: Icon(Icons.lock),
            ),
          ),
        ],
      ),
    );
  }

}