import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本及样式"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Text
          Text(
            "Hello world",
            textAlign: TextAlign.left,
          ),
          Text(
            "Hello world! I'm Jack. " * 4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Hello world",
            textScaleFactor: 1.5,
          ),
          // TextStyle
          Text(
            "Hello world",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
              height: 1.2,
              fontFamily: "Courier",
              background: Paint()..color=Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
          //  TextSpan
          Text.rich(TextSpan(
            children: [
              TextSpan(
                text: "Home:"
              ),
              TextSpan(
                text: "https://flutterchina.club",
                style: TextStyle(
                  color: Colors.blue,
                ),
                recognizer: null,
              ),
            ]
          )),
          // DefaultTextStyle
          DefaultTextStyle(
            //1.设置文本默认样式
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("hello world"),
                Text("I am Jack"),
                Text(
                  "I am Jack",
                  style: TextStyle(
                    inherit: false,   //2.不继承默认样式
                    color: Colors.grey,
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
