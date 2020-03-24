import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme:ThemeData(
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
    return Center(
      child: Text(
        "你好 flutter 111!",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40,
//          color: Colors.yellow,
          color: Color.fromRGBO(244, 121, 121, 0.5),
        ),
      ),
    );
  }
}
