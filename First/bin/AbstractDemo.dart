abstract class Animal {
  //  抽象类

  eat(); //  无方法体 就是 抽象方法

}

class Dog extends Animal {
  @override
  eat() {
    print("小狗在吃骨头.");
  }
}

class Cat extends Animal {
  @override
  eat() {
    print("小猫在吃骨头.");
  }
}

abstract class DB {
  //  用抽象类 作为接口 定义
  String uri;

  add();

  save();

  delete();
}

class MySQL implements DB {
  //  实现接口
  @override
  add() {
    // TODO: implement add
    return null;
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  save() {
    // TODO: implement save
    return null;
  }

  @override
  String uri;
}

abstract class A {
  printA();
}

abstract class B {
  printB();
}

class C implements A, B {
  //  实现多个接口
  @override
  printA() {
    // TODO: implement printA
    return null;
  }

  @override
  printB() {
    // TODO: implement printB
    return null;
  }
}

class MA {
  printA() {
    print("A");
  }
}
class MB{
  printB(){
    print("B");
  }
}
class MC with MA,MB {  //  Mixins  混入   类似 类 的 多继承
                       //  有继承关系的 类 无法 混入
                       //  有 构造函数的类 无法 混入

}

void main() {
  var d = Dog();
  d.eat();

  var c = Cat();
  c.eat();

  List<Animal> list = [Cat(), Dog()];
  list.forEach((item) {
    item.eat();
  });

  var mc = new MC();
  mc.printA();
  mc.printB();
}
