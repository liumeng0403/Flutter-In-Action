import 'package:firstflutterapp/TapboxC.dart';
import 'package:flutter/material.dart';

class ParentWidgetC extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ParentWidgetC();

}

class _ParentWidgetC extends State<ParentWidgetC>{

  bool _active = false;

  void _handleTapboxChanged(bool newValue){
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapboxC(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }

}