import 'package:firstflutterapp/EchoRoute.dart';
import 'package:firstflutterapp/NewRoute.dart';
import 'package:firstflutterapp/TipRoute.dart';
import 'package:flutter/material.dart';

import 'package:firstflutterapp/MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // 名为"/"的路由作为应用的home(首页)
      initialRoute: "/",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "new_page": (context) => NewRoute(),
        "new_page_with_args": (context) => EchoRoute(),
        "tip":(context)=>TipRoute(text: ModalRoute.of(context).settings.arguments),
        "/": (context) => MyHomePage(title: 'My Home Page'), // //注册首页路由
      },
    );
  }
}
