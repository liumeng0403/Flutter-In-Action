import 'package:flutter/material.dart';

class ProgressDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProgressDemo();
}

class _ProgressDemo extends State<ProgressDemo> with SingleTickerProviderStateMixin{

  AnimationController _animationController ;

  @override
  void initState() {
    super.initState();

    _animationController = new AnimationController(vsync: this, duration: Duration(seconds: 3));
//    _animationController.value=.8;
    _animationController.forward();
    _animationController.addListener((){
      setState(() {
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("进度条 示例"),
      ),
      body: Column(
        children: <Widget>[
          // // 模糊进度条(会执行一个动画)
          LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation(Colors.blue),
          ),
          // //进度条显示50%
          LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            value: .5,
          ),
          // 模糊进度条(会执行一个旋转动画)
          CircularProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation(Colors.blue),
          ),
          //进度条显示50%，会显示一个半圆
          CircularProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            value: .5,
          ),
          // 自定义尺寸
          SizedBox(
            height: 3,
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              value: .5,
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              value: .7,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey[200],
                    valueColor: ColorTween(begin: Colors.grey,end: Colors.blue).animate(_animationController),
                    value: _animationController.value,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
