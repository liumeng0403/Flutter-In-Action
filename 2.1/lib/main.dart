import 'dart:async';

import 'package:firstflutterapp/ContextRoute.dart';
import 'package:firstflutterapp/CounterWidget.dart';
import 'package:firstflutterapp/EchoRoute.dart';
import 'package:firstflutterapp/NewRoute.dart';
import 'package:firstflutterapp/TipRoute.dart';
import 'package:flutter/material.dart';

import 'package:firstflutterapp/MyHomePage.dart';

void main() => runApp(MyApp());

//void main(){  //  有问题
//  FlutterError.onError = (FlutterErrorDetails details){
//    reportErrorAndLog(details);
//  };
//  runZoned(()=>runApp(MyApp()),
//    zoneSpecification: ZoneSpecification(
//      print: (Zone self, ZoneDelegate parent, Zone zone, String line){
//        collectLog(line);
//      },
//    ),
//    onError: (Object obj, StackTrace stack){
//      var details = makeDetails(obj, stack);
//      reportErrorAndLog(details);
//    }
//  );
//}

void collectLog(String line){
   // print(line);
}

void reportErrorAndLog(FlutterErrorDetails details){
  //上报错误和日志逻辑
}

FlutterErrorDetails makeDetails(Object obj,StackTrace stack){
  // 构建错误信息
}

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
        "stateless_context_text":(context)=>ContextRoute(),
        "state_life_cycle":(context)=>CounterWidget(),
        "/": (context) => MyHomePage(title: 'My Home Page'), // //注册首页路由
      },
    );
  }
}
