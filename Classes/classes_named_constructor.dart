class Person {
  String name, country;
  int age;

  Person({required this.name, required this.age, required this.country});

  Person.createKorean({required String name, required int age})
      : this.name = name,
        this.age = age,
        this.country = 'Korea';

  Person.createJapanese(String name, int age)
      : this.name = name,
        this.age = age,
        this.country = 'Japan';
}

void main() {
  var player = Person.createKorean(name: 'kyh', age: 31);
  var player2 = Person.createJapanese('hiqd', 10);
}
