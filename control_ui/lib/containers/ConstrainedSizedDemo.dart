import 'package:flutter/material.dart';

class ConstrainedSizedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("尺寸限制类容器 demo"),
        actions: <Widget>[
          UnconstrainedBox(
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Colors.white70),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: double.infinity, //宽度尽可能大
              minHeight: 50, //最小高度为50像素
            ),
            child: Container(
              height: 5,
              color: Colors.red,
            ),
          ),
          UnconstrainedBox(
            child: SizedBox(
              width: 80,
              height: 80,
              child: Container(
                height: 5,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
