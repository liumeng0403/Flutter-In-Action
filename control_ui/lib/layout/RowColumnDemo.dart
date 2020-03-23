import 'package:flutter/material.dart';

class RowColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("线性布局 示例"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  // //测试Row对齐方式，排除Column默认居中对齐的干扰
        children: <Widget>[
          // 默认为居中对齐
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          // 由于mainAxisSize值为MainAxisSize.min，Row的宽度等于两个Text的宽度和，所以对齐是无意义的，所以会从左往右显示
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          // textDirection值为TextDirection.rtl，所以子组件会从右向左的顺序排列，而此时MainAxisAlignment.end表示左对齐，
          // 所以最终显示结果就是图中第三行的样子；
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          // 测试的是纵轴的对齐方式，由于两个子Text字体不一样，所以其高度也不同，
          // 我们指定了verticalDirection值为VerticalDirection.up，
          // 即从低向顶排列，而此时crossAxisAlignment值为CrossAxisAlignment.start表示底对齐。
          Row(
            verticalDirection: VerticalDirection.up,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(" hello world ",style: TextStyle(fontSize: 30.0),),
              Text(" I am Jack "),
            ],
          ),
          //
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("hi"),
              Text("world"),
            ],
          ),
        ],
      ),
    );
  }
}
