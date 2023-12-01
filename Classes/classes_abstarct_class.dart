abstract class myProfile {
  void introduce();
}

enum Country { Korean, Japanese }

class Person extends myProfile {
  String name;
  Country country;
  int age;

  Person({required this.name, required this.country, required this.age});

  void introduce() {
    print('my name is $name');
  }
}

void main() {
  var player = Person(name: 'kyh', country: Country.Korean, age: 31);

  player.introduce();
}
