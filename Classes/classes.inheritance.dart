class Human {
  final String name;
  Human(this.name);

  sayHello() {
    print('my name is $name');
  }
}

enum Country { Korean, Japanese }

class Profile extends Human {
  Country country;
  int age;

  Profile({
    required this.country,
    required this.age,
    required String name,
  }) : super(name);

  @override
  void sayHello() {
    super.sayHello();
    print('my age $age, my country ${country}');
  }
}

void main() {
  var person = Profile(country: Country.Korean, age: 13, name: 'hi');
  person.sayHello();
}
