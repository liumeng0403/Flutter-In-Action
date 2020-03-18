class Person2 {
  String _name = "张三"; //  属性 默认 公有  ,   加 下划线 "_"  变成私有  , 方法私有也是同样的方式
  int age = 23;

  // getter
  get name {
    return _name;
  }
  // setter
  set name(String name){
    this._name = name;
  }

  Person2(this._name, this.age); //  简写 默认 构造函数

  void getInfo() {
    print("${this._name} -- ${this.age}");
  }
}
