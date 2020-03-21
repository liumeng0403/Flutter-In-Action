

T getData<T>(T value){   //  泛型 方法
  return value;
}


class PrintClass<T>{  //  泛型 类

  List<T> _list = new List<T>();

  void add(T value){
    this._list.add(value);
  }

  void printInfo(){
    this._list.forEach((item){
      print(item);
    });
  }

}


abstract class A<T>{   //   泛型  接口
  bool add(T value);
  int update(T value);
}


void main(){

  String str = getData("xxxx");

  int num = getData(123);

  var print = new PrintClass<int>();
  print.add(1);
  print.add(2);
  print.printInfo();

}






