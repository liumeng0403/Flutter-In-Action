
void main() {
// 算数运算符

  int a = 13;
  int b = 5;

  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b); // 取余  3
  print(a ~/ b); // 取整  2

  // 关系运算符

  print(a == b);
  print(a != b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);

  // 逻辑运算符

  bool flag1 = true;
  bool flag2 = false;

  print(flag1 && flag2);
  print(flag1 || flag2);
  print(!flag1);

  // 赋值运算符

  int x = 10;
  print(x);

  int y;
  y ??= 20; //  ??=  若 y 为 null 就赋值 20 否则 不赋值
  print(y);

  int z = 30;
  z ??= 40;
  print(z);

  // 复合运算符  += -= *= /= %=   ~/=

  //  条件表达式   if...else   switch...case  ?:  ??

  var sex = "男";

  switch (sex) {
    case "男":
      print(1);
      break;
    case "女":
      print(2);
      break;
    default:
      print(3);
  }


  var flag5 = true;
  var c = flag5 ? "true" : "false" ;
  print(c);


  var a1;
  var b1 = a1 ?? 10;  // a 为 null 则 赋值 10;
  print(b1);

  //  类型转换

  String str6 = "123";
  int num6 = int.parse(str6);
  print(num6 is int);

  String str7 ="123.1";
  double num7 = double.parse(str7);
  print(num7 is double);

  var str = "";
  try{
    int num8 = int.parse(str);
  }catch(err){
    print(err);
  }


  var str9 = "1234";
  print(str9.isEmpty);

  var str0 = 0/0;
  print(str0.isNaN);


}
