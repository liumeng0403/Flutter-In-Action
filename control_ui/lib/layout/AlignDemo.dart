import 'package:flutter/material.dart';

class AlignDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("对齐与相对定位 示例"),
      ),
      body: Container(
        height: 120,
        width: 120,
        color: Colors.blue[50],
        child: Align(
          alignment:Alignment.topRight,
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }

}