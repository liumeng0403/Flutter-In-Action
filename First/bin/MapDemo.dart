void main() {
  var person = {"name": "张三", "age": 20};
  print(person);

  print(person.keys);
  print(person.keys.toList());
  print(person.values.toList());

  print(person.isEmpty);
  print(person.isNotEmpty);

  person.addAll({
    "sex":"男",
    "work":"code"
  });
  print(person);

  person.remove("sex");
  print(person);

  print(person.containsValue("张三"));

  var m = Map();
  m["name"] = "李四";
  m["age"] = 30;
  print(m);
}
