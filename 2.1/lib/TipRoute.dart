import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget {
  TipRoute({
    Key key,
    @required this.text,  // // 接收一个text参数
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: ()=>Navigator.pop(context,"new page return result"),
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
