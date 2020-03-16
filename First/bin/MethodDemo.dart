

void pirntInfo(){
  print("自定义 方法1");
}

void main(){

  pirntInfo();

  int myNum(){
    var n = 123;
    return n;
  }
  print(myNum());


  String xxx(){
    String yyy(){
      String zzz(){
        return "zzz";
      }
      return zzz();
    }
    return yyy();
  }
  print(xxx());


  int mySum(n){   // dynamic
    var sum=0;
    for(var i=1;i<=n;i++){
      sum += i;
    }
    return sum;
  }
  print(mySum(60));
  print(mySum(100));


  void printUserInfo(String userName,int age){  //  形参
    print("$userName -- $age");
  }
  printUserInfo("张三", 20);  //  实参

  void printUser(String userName,[int age,String sex]){   //  可选参数
    if(age !=null && sex !=null){
      print("$userName -- $age -- $sex");
    }else {
      print("$userName");
    }
  }
  printUser("李四",20,"男");
  printUser("李四");

  void printUser2(String userName,[int age,String sex="女"]){   //  默认值可选参数
    if(age !=null ){
      print("$userName -- $age -- $sex");
    }else {
      print("$userName -- $sex");
    }
  }
  printUser2("李四",20,"男");
  printUser2("李四");

  void printUser3(String userName,{int age, String sex="女"}){  //  默认值 可选 命名 参数

    if(age != null){
      printUser("$userName -- $age -- $sex");
    }else{
      printUser("$userName -- $sex");
    }

  }

  printUser3("李四",age: 10,sex: "男");
  printUser3("王五");

  fn1(){     //   方法  函数式 参数
    print("this is a func");
  }
  fn2(fn){
    fn1();
  }
  fn2(fn1);

  var fn = (){     //   匿名方法
    print("this is a func 2");
  };
  fn();


}