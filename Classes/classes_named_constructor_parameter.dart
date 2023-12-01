class Person {
  String name;
  String country;
  int age;

  Person({required this.name, required this.country, required this.age});
}

void main() {
  var player = Person(name: 'kyh', country: 'korea', age: 31);
}
