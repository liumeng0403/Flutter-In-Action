import 'package:controlui/ButtonDemo.dart';
import 'package:controlui/FocusTestRoute.dart';
import 'package:controlui/ImageDemo.dart';
import 'package:controlui/MyHomePage.dart';
import 'package:controlui/SwitchAndCheckBoxTestRoute.dart';
import 'package:controlui/TextDemo.dart';
import 'package:controlui/TextFieldDemo.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        "text":(context)=>TextDemo(),
        "button":(context)=>ButtonDemo(),
        "image":(context)=>ImageDemo(),
        "switch_checkbox":(context)=>SwitchAndCheckBoxTestRoute(),
        "text_form":(context)=>TextFieldDemo(),
        "focus":(context)=>FocusTestRoute(),
      },
    );
  }
}


