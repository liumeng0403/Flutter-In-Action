void main(){

// 算数运算符

  int a =13;
  int b = 5;

  print(a+b);
  print(a-b);
  print(a*b);
  print(a/b);
  print(a%b);  // 取余  3
  print(a~/b);  // 取整  2


  // 关系运算符

  print(a==b);
  print(a!=b);
  print(a>b);
  print(a<b);
  print(a>=b);
  print(a<=b);

  // 逻辑运算符

  bool flag1 =  true;
  bool flag2 = false;

  print(flag1&&flag2);
  print(flag1||flag2);
  print(!flag1);


  // 赋值运算符

  int x = 10;
  print(x);

  int y;
  y??=20;  //  ??=  若 y 为 null 就赋值 20 否则 不赋值
  print(y);

  int z=30;
  z??=40;
  print(z);

  // 复合运算符  += -= *= /= %=   ~/=

  //  条件表达式   if...else   switch...case


}