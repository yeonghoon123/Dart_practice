String sayHello({String name = 'anny', int age = 99}) {
  return 'hello my name is $name, my age $age';
}

String sayHello2({required String name, required int age}) {
  return 'hello my name is $name, my age $age';
}

void main() {
  print(sayHello());
  print(sayHello2(name: 'hello', age: 31));
}
