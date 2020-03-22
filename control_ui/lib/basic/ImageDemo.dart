import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("图片 示例"),
      ),
      body: Column(
        children: <Widget>[
          // 从asset中加载图片
          Image(
            image: AssetImage("images/avatar.png"),
            width: 100,
          ),
          Image.asset(
            "images/avatar.png",
            width: 100,
          ),
          // 从网络加载图片
          Image(
            image: NetworkImage(
                "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
            width: 100,
          ),
          Image.network(
            "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
            width: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.accessible,
                color: Colors.green,
              ),
              Icon(
                Icons.error,
                color: Colors.red,
              ),
              Icon(
                Icons.fingerprint,
                color: Colors.blue,
              ),
            ],
          )
        ],
      ),
    );
  }
}
