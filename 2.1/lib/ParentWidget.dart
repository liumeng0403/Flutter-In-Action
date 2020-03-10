import 'package:firstflutterapp/TapboxB.dart';
import 'package:flutter/material.dart';

class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ParentWidget();
}

class _ParentWidget extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapboxB(active: _active, onChanged: _handleTapboxChanged),
    );
  }
}
