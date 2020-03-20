//import '../lib/Person2.dart';
import 'package:First/Person2.dart';

void main(){

  var p1=Person("张三",20);
  print(p1.name);
  p1.getInfo();

  var p2 = Person2("李四",22);
  //  print(p2._name);
  print(p2.name);
  p2.name="李四2";
  p2.getInfo();

  var p3 = Person.sepcify("王五", 20);
  p3.getInfo();


  print(PersonStatic.name);
  PersonStatic.getInfo();

  var p4=PersonStatic();
  p4.getInfo2();


  //  类 对象 操作符

  Person p5;
  p5?.getInfo(); // 条件运算符 ?  当 p5 为 null 的时候, 就不会调用 后面的方法

  var p6=Person("张三",11);
  p6.getInfo();

  p6..name="张三22"  //  连缀 操作符 ..  简化赋值调用
    ..age=33
    ..getInfo();

  print("-----------------------");

  var w = Web("李四",22,"男");
  w.getInfo();


}


class PersonStatic {
  static String name = "赵六";
  int age=20;

  static void getInfo() {
    print("${name}");
  }
  void getInfo2(){
    print("$name -- ${this.age}");
  }
}


class Web extends Person{

  String sex;

  Web(String name,int age,String sex)
      :super(name,age){
    this.sex = sex;
  }
  
  @override
  void getInfo() {
    super.getInfo();
    print("${this.name}  --  ${this.age}  --  ${this.sex}");
  }

}


class Person {
  String name;
  int age;

//  Person():this.name="张三",this.age=23{   //  默认构造函数   //  构造前 赋值 :
//    print("构造函数");
//  }

  Person(this.name,this.age);

  Person.sepcify(String name,int age){   //   命名构造函数
    this.name=name;
    this.age=age;
  }


  void getInfo() {
    print("${this.name} -- ${this.age}");
  }
}
