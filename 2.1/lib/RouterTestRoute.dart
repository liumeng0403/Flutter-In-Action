import 'package:firstflutterapp/TipRoute.dart';
import 'package:flutter/material.dart';

class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed:() async {
          // 打开`TipRoute`，并等待返回结果
          var result = await Navigator.of(context).pushNamed("tip",arguments: "tip param");
          //输出`TipRoute`路由返回结果
          print("old page receive: $result");
        } ,
      ),
    );
  }
}
