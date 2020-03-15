

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




}