String sayHello2(String name, [int? age = 99]) {
  return 'hello my name is $name, my age $age';
}

void main() {
  print(sayHello2('hello'));
}
