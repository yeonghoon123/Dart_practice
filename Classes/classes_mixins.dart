mixin KoreanCountry {
  final String country = 'korean';
}

mixin AgeAverage {
  final int age = 30;
}

mixin Name {
  final String name = 'kyh';
}

class Human with KoreanCountry, Name, AgeAverage {
  void introduce() {
    print('${this.age}, ${this.name}, ${this.country}');
  }
}

void main() {
  var player = Human();
  player.introduce();
}
