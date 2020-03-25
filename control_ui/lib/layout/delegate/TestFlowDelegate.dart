import 'package:flutter/material.dart';

class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;

  TestFlowDelegate({
    this.margin,
  }) {}

  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    // //计算每一个子widget的位置
    for (int i = 0; i < context.childCount; i++) {
      var width = x + context.getChildSize(i).width + margin.right;

      print(x);
      print(y);
      print(width);
      print(context.getChildSize(i).width);

      if (width < context.size.width) {
        context.paintChild(i, transform: Matrix4.translationValues(x, y, 0));
        x = x + context.getChildSize(i).width + margin.right + margin.left;
      } else {
        x = margin.left;
        y = y + context.getChildSize(i).height + margin.bottom + margin.top;
        context.paintChild(i, transform: Matrix4.translationValues(x, y, 0.0));
        x = x + context.getChildSize(i).width + margin.right + margin.left;
      }
    }
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return Size(double.infinity,400);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
