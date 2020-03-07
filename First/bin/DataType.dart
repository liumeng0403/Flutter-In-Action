void main() {
  // String

  var str1 = 'str1';
  var str2 = "str2";
  String str3 = "str3";
  String str4 = 'str4';
  var str5 = '''
                line1
                line2
              ''';
  var str6 = """
              line1
              line2
            """;

  var str7 = "hello";
  var str8 = "world";
  var str9 = "$str7 $str8";
  print(str9);
  print(str7 + str8);

  // Number
  // int 整形
  // double  浮点型

  int a = 123;
  double b = 23.50;
  print(a);
  print(b);

  // bool  -->  true / false

  //  List  数组

  var list1 = ['a', 'b', 'c', 'd'];
  print(list1.length);
  print(list1[1]);

  var list2 = List();
  list2.add("zhang");
  list2.add("wang");
  list2.add("li");

  var list3 = List<String>();

  // Map  (字典)(json object)

  var map1 = {"name": "张三", "age": 10};

  print(map1);
  print(map1["name"]);

  var map2 = Map();
  map2["name"] = "李四";
  map2["age"] = 22;



  // is  可以用来做类型判断

  print(str1 is String);


}
