void main(){
  var set = Set();
  set.add("香蕉");
  set.add("苹果");
  print(set);
  set.add("香蕉");
  print(set);
  print(set.toList());

  set.forEach((item){
    print(item);
  });
}