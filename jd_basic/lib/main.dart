import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160,
            height: 120,
            color: Colors.red,
          ),
          Container(
            width: 160,
            height: 120,
            color: Colors.blue,
            child: ListView(
              children: <Widget>[
                Image.network("https://www.itying.com/images/flutter/1.png"),
                Text("标题 xxxx"),
              ],
            ),
          ),
          Container(
            width: 160,
            height: 120,
            color: Colors.yellow,
          ),
          Container(
            width: 160,
            height: 120,
            color: Colors.green,
          ),
          Container(
            width: 160,
            height: 120,
            color: Colors.black,
          ),
          Container(
            width: 160,
            height: 120,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
