class Person {
  String name = 'kyh';
  int age = 21;

  // class 와 중복되는 이름이 선언될 경우 this를 사용하면 method밖에 name호출
  void sayHello() {
    var name = 'same name';

    print('hello my name is $name');
    print('hello my name is ${this.name}');
  }
}

void main() {
  var player = Person();
  player.sayHello();

  player.name = 'change name';

  print(player.name);
}
