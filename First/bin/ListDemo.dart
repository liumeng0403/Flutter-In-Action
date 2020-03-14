void main06() {
  //
  List myList = ["香蕉", "苹果", "西瓜"];

  print(myList[1]);
  print(myList.length);
  print(myList.isEmpty);
  print(myList.isNotEmpty);
  print(myList.reversed.toList());
  print(myList);

  myList.add("桃子");
  print(myList);

  myList.addAll(["葡萄1", "葡萄2"]);
  print(myList);

  print(myList.indexOf("苹果"));

  myList.remove("西瓜");
  print(myList);

  myList.removeAt(1);
  print(myList);

  myList.fillRange(1, 3, "x"); //  [ )   //  修改指定位置的值
  print(myList);

  myList.insert(1, "桃子");
  print(myList);

  myList.insertAll(0, ["栗子1", "栗子2"]);   //  指定位置插入
  print(myList);

  var str = myList.join(",");
  print(str);

  var list2 = str.split(",");
  print(list2);

  //
  var list = List();
  list.add(111);
  list.add(222);
  print(list);

  //
}
