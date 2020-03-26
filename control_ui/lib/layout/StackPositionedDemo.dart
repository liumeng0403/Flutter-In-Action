import 'package:flutter/material.dart';

class StackPositionedDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("层叠布局 demo"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),  // 通过ConstrainedBox来确保Stack占满屏幕
        child: Stack(
          alignment: Alignment.center,  // //指定未定位或部分定位widget的对齐方式
          children: <Widget>[
            // 第一层
            Container(   //  第一个子文本组件Text("Hello world")没有指定定位，并且alignment值为Alignment.center，所以它会居中显示
              child: Text(
                "Hello world",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ),
            // 第二层
            Positioned(  // 第二个子文本组件Text("I am Jack")只指定了水平方向的定位(left)，所以属于部分定位，即垂直方向上没有定位，那么它在垂直方向的对齐方式则会按照alignment指定的对齐方式对齐，即垂直方向居中。
              left: 18,
              child: Text("I am Jack"),
            ),
            //  第三层
            Positioned(  //  对于第三个子文本组件Text("Your friend")，和第二个Text原理一样，只不过是水平方向没有定位，则水平方向居中。
              top: 18,
              child: Text("Your friend"),
            ),
          ],
        ),
      ),
    );
  }

}