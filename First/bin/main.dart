// xx
/// yyy   三个 / 注释 可以方法提示
void main(){
  print("你好 dart");

  var str = "你好 2";
  print(str);

  String str3 = "你好 3";
  print(str3);

  int myNum = 12345;
  print(myNum);

//  myNum =  "";  //  error  /  dart 是强类型语言

  const PI = 3.14;  //  const  编译常量
  //  PI = 2;   // 常量是不可以修改的

  final time = DateTime.now();  //  final 运行时常量

//  time = DateTime.now();  //  error ,  final 变量 仅可赋值一次


}