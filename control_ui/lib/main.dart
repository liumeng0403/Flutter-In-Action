import 'package:controlui/BasicDemo.dart';
import 'package:controlui/basic/ButtonDemo.dart';
import 'package:controlui/basic/FocusTestRoute.dart';
import 'package:controlui/basic/FormTestRoute.dart';
import 'package:controlui/basic/ImageDemo.dart';
import 'package:controlui/LayoutDemo.dart';
import 'package:controlui/MyHomePage.dart';
import 'package:controlui/basic/ProgressDemo.dart';
import 'package:controlui/layout/AlignDemo.dart';
import 'package:controlui/layout/FlexExpandedDemo.dart';
import 'package:controlui/layout/RowColumnDemo.dart';
import 'package:controlui/basic/SwitchAndCheckBoxTestRoute.dart';
import 'package:controlui/basic/TextDemo.dart';
import 'package:controlui/basic/TextFieldDemo.dart';
import 'package:controlui/layout/StackPositionedDemo.dart';
import 'package:controlui/layout/WrapFlowDemo.dart';
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
        //
        "basic": (context) => BasicDemo(),
        "text": (context) => TextDemo(),
        "button": (context) => ButtonDemo(),
        "image": (context) => ImageDemo(),
        "switch_checkbox": (context) => SwitchAndCheckBoxTestRoute(),
        "text_form": (context) => TextFieldDemo(),
        "focus": (context) => FocusTestRoute(),
        "login": (context) => FormTestRoute(),
        "progress": (context) => ProgressDemo(),

        //
        "layout": (context) => LayoutDemo(),
        "row_column": (context) => RowColumnDemo(),
        "flex": (context) => FlexExpandedDemo(),
        "flow": (context)=>WrapFlowDemo(),
        "stack":(context)=>StackPositionedDemo(),
        "align":(context)=>AlignDemo(),
      },
    );
  }
}
