import 'package:firstflutterapp/Echo.dart';
import 'package:firstflutterapp/NewRoute.dart';
import 'package:firstflutterapp/RandomWordsWidget.dart';
import 'package:firstflutterapp/RouterTestRoute.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton(
              child: Text("open new_page_with_args"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.of(context).pushNamed("new_page_with_args",arguments: "hi");
              },
            ),
            FlatButton(
              child: Text("open new_page"),
              textColor: Colors.blue,
              onPressed: (){
                //导航到新路由
                Navigator.pushNamed(context,"new_page");
              },
            ),
            FlatButton(
              child: Text("open contxt test"),
              textColor: Colors.black,
              onPressed: (){
                Navigator.pushNamed(context, "stateless_context_text");
              },
            ),
            RaisedButton(
              child: Text("页面传值"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return RouterTestRoute();
                  },
                ));
              },
            ),
            // 随机字符串
            RandomWordsWidget(),
            RaisedButton(
              child: Text("widget 简介"),
              textColor: Colors.black,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return Echo(text: "hello lm");
                  },
                ));
              },
            ),
            RaisedButton(
              child: Text("state 生命周期"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.pushNamed(context, "state_life_cycle");
              },
            ),
            RaisedButton(
              child: Text("获取 state"),
              textColor: Colors.blue,
              onPressed: ()=> Navigator.pushNamed(context, "get_state"),
            ),
            RaisedButton(
              child: Text("self state"),
              textColor: Colors.blue,
              onPressed: ()=>Navigator.pushNamed(context, "self_state"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}