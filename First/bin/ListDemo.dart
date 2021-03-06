void main() {
  //
  List myList = ["香蕉", "苹果", "西瓜"];

  for(var i=0;i<myList.length;i++){
    print(myList[i]);
  }

  for(var item in myList){
    print(item);
  }

  myList.forEach((item){
    print(item);
  });

  print(">>>>>>>>>>>>>>>>>>>");
  myList.forEach((item)=>print(item));
  myList.forEach((item)=>{  // => lambda 表达式 只能写一行代码
    print(item *2 )
  });
  print("<<<<<<<<<<<<<<<<<<<");

  var newMyList = myList.map((item){
    return item*2;
  }).toList();
  print(newMyList);

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
  var numList = [1,2,3,4,5,6,7,8,9];
  var numList2 = numList.where((item)=>item>5).toList();
  print(numList2);

  print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
  var numList3 = List();
  numList3 = numList.map((item){  // (){}  lambda  可以写多行代码
    if(item>3){
      return item*2;
    }
    return item;
  }).toList();
  print(numList3);
  print("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");

  print(numList.any((item)=> item>5));
  print(numList.every((item)=>item>5));

}
