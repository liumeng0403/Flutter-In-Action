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