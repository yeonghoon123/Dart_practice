enum Country { Korean, Japanese }

class Person {
  String name;
  Country country;
  int age;

  Person({required this.name, required this.country, required this.age});
}

void main() {
  var player = Person(name: 'kyh', country: Country.Korean, age: 31);

  print(player.country);
}
