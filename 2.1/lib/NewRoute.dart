import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("new route"),
      ),
      body: Center(
        child: Text("this is a new_page."),
      ),
    );
  }

}