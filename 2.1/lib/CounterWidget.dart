
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({
    Key key,
    this.initValue: 0,
  });

  final int initValue;

  @override
  State<StatefulWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget>{

  int _counter;

  @override
  void initState(){
    super.initState();
    //初始化状态
    _counter=widget.initValue;
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text("$_counter"),
          onPressed: ()=>setState(()=>++_counter),
        ),
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

}
