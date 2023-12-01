class Person {
  final String name;
  int age;

  Person(this.name, this.age); // constructor 사용

  // class 와 중복되는 이름이 선언될 경우 this를 사용하면 method밖에 name호출
  void sayHello() {
    print('hello my name is $name');
  }
}

void main() {
  var player = Person('test1', 23);
  player.sayHello();

  var player2 = Person('test2', 31);
  player2.sayHello();
}
