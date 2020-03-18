//import '../lib/Person2.dart';
import 'package:First/Person2.dart';

void main(){

  var p1=Person();
  print(p1.name);
  p1.getInfo();

  var p2 = Person2("李四",22);
  //  print(p2._name);
  print(p2.name);
  p2.name="李四2";
  p2.getInfo();

  var p3 = Person.sepcify("王五", 20);
  p3.getInfo();

}




class Person {
  String name;
  int age;

  Person():this.name="张三",this.age=23{   //  默认构造函数   //  构造前 赋值 :
    print("构造函数");
  }

  Person.sepcify(String name,int age){   //   命名构造函数
    this.name=name;
    this.age=age;
  }


  void getInfo() {
    print("${this.name} -- ${this.age}");
  }
}
