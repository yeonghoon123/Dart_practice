typedef ListType = List<int>;
typedef DataType = Map<String, String>;

ListType reverseList(List<int> list) {
  var reverse = list.reversed;
  return reverse.toList();
}

String sayHello(DataType datas) {
  return 'hello ${datas['name']}';
}

void main() {
  print(reverseList([1, 2, 3]));
  print(sayHello({"name": 'kyh'}));
}
