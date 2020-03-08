

import 'package:flutter/material.dart';

class GetState extends StatefulWidget{

  @override
  State<StatefulWidget> createState () =>_GetState();

}

class _GetState extends State<GetState>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("子树中获取State对象"),
      ),
      body: Center(
        child: Builder(
          builder: (context){
            return RaisedButton(
              onPressed: (){
                // 方法一 // 查找父级最近的Scaffold对应的ScaffoldState对象
//                ScaffoldState _state = context.findAncestorStateOfType<ScaffoldState>();
              // 方法二  // 直接通过of静态方法来获取ScaffoldState
                ScaffoldState _state = Scaffold.of(context);
                _state.showSnackBar(SnackBar(
                  content: Text("我是SnackBar"),
                ));
              },
              child: Text("显示SnackBar"),
            );
          },
        ),
      ),
    );
  }

}