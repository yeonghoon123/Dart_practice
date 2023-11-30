# Dart Practice

## 목차

1. [프로젝트 설명](#1-프로젝트-설명)
2. [Dart란?](#2-dart란)
3. [사용 분야](#3-사용-분야)
4. [문법](#4-문법)<br>
   4-1. [Variables](#1-variables)<br>
   4-2. [DataTypes](#2-data-types)<br>
   4-3. [Functions](#3-functions)<br>

## 1. 프로젝트 설명

이 프로젝트는 노마드 코더님의 Dart 기초 강의를 바탕으로 작성합니다.

<br>
<br>

## 2. Dart란?

구글에서 개발한 프로그래밍 언어로, 주로 모바일 앱 및 웹 애플레케이션을 개발하기 위해 사용된다.<br>
객체 지향적이며, 정적 타입 언어로서 개발자가 코드를 더 안정적으로 유지하고 디버그하기 쉽게 만들어준다.<br>
가비지 컬렉션을 지원하며, C 언어와 비슷한 문법을 가지고 있어 다른 언어에서 이미 경험이 있는 개발자들이 쉽게 학습할 수 있다.<br>

<br>
<br>

## 3. 사용 분야

1. 플러터
2. 웹 개발
3. 서버 프로그래밍

<br>
<br>

## 4. 문법

### 1. Variables

dart 문법에서는 여러가지 변수 선언 방법이 있다. (variable 폴더에 예시 코드 확인)

-   var: 함수나 메소드 내부에 지역 변수를 선언할 때 사용한다.
-   data type: class에서 변수나 property를 선언할 때 사용한다.
-   dynamic: 여러가지 타입을 가질 수 있는 변수 선언이다. (필요할때만 사용 권장)
-   nullable : 변수뒤에 '?' 를 넣을 경우 이 변수는 null 이 될수 있음을 표시한다. ex) String? test
-   final: 변수의 값을 한번만 할당 할 수 있게 한다.
-   late: 변수의 값을 나중에 할당 할 수 있게 한다.
-   const: 컴파일시에 값이 할당 되어 있어야 한다. ex) const test = fetchApi() - X, const test = '12311123' - O

<br>
<br>

### 2. Data Types

dart에서 사용되는 여러 데이터 타입

-   String: 문자열을 선언하는 클래스
-   int: 정수를 선언하는 클래스
-   bool: 참/거짓을 선언하는 클래스
-   double: 소수를 선언하는 클래스
-   num: 정수, 소수 두가지다 선언하는 클래스

<br>

#### List

Java Script에서 배열과 같은 역할을 한다. collection if왜 collection for를 사용할 수 있다.<br>
collection if란 조건에 따라 컬렉션(배열, 리스트 등)의 각 요소를 포함시킬지 결정하는 패턴을 가리키는 용어 <br>
collection for란 반복문을 사용하여 컬렉션(배열, 리스트 등)의 각 요소에 접근하고 처리하는 패턴을 가리키는 용어
<br>

선언 방식: var, List\<datatype>

```dart
  var giveFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if (giveFive) 5,
  ];

  // print: [1, 2, 3, 4, 5]
```

<br>

#### String Interpolation

String Interpolation이란 문자열 안에 변수나 표현식을 삽입하여 문자열을 동적으로 생성하는 기술

```dart
  var name = 'kyh';
  var age = 10;
  var greeting = 'my name is $name, age: ${age+2}';

  // print: my name is kyh, age: 12
```

<br>

#### Maps

키-값 쌍의 컬렉션을 나타내는 데이터 구조이다. 각 키는 고유하며, 키와 연결된 값에 접근할 수 있다. <br>
Dart에서 Map은 중괄호 {}를 사용하여 생성하며, 각 키-값 쌍은 콜론 :으로 구분한다.

```dart
var introduce = {
    'name': 'kyh',
    'age': 20,
};

print(introduce['name']); // kyh
```

<br>

#### Sets

순서 없이 고유한 값을 저장하는 컬렉션이다. 중복된 값을 혀용하지 않고, 값 추가, 제거 존재 여부 확인등 다양한 연산을 제공한다.

```dart
  var numbers = {1, 2, 3, 4};
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  print(numbers); // {1,2,3,4}
```

<br>
<br>

### 3. Functions

함수는 기본적으로 객체지향 언어인데, 함수 역시 객체로 취급된다. 이름과 파라미터와 리턴 타입을 정의 할수있다.
값을 return을 하지 않을때는 void, 값을 return한다면 datatype을 정의한다.

```dart
void printHello () {
  print('hello');
}

String giveString (){
  return 'hello';
}

void main(){
  printHello();
  print(giveString());
}


```

#### name argument

Named Parameter는 함수 호출 시에 파라미터의 이름을 명시적으로 지정할 수 있도록 하는 기능이다.<br>
함수 호출시 순서를 신경쓰지 않아도 되며, 일부 파라미터를 전달할수 있다.<br>
사용자가 값을 넣지 않았을 경우 에러가 나타나지 않도록 하는 방법은 2가지가 있다.<br>
첫번째는 기본값을 넣어주는것이고 두번째는 'required'를 사용하여 필수 입력 항목을 명시해준다.

```dart
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
```

<br>

#### Optional Positional Parameters

함수의 파라미터 중에서 일부가 생략될 수 있는 파라미터를 의미한다다. 이러한 파라미터는 함수 호출 시에 값을 제공할 수도 있고, 제공하지 않을 수도 있다. <br>
Dart에서는 옵셔널 위치 파라미터를 대괄호 []를 사용하여 정의한다.

```dart
String sayHello2(String name, [int? age = 99]) {
  return 'hello my name is $name, my age $age';
}

void main() {
  print(sayHello2('hello'));
}

```

<br>

#### QQ Operator

"??", 즉 "null-aware" 또는 "null=awareness" 연산자는 피연산자가 'null'이 아닌 경우 피연산자의 값을 반환하고, 'null'일경우 다른값으로 대체하는 연산자 이다.

```dart
String capitalizeName(String? name) =>
    name != null ? name.toUpperCase() : 'ANON';

void main() {
  String? name;
  name ??= 'kyh';

  print(capitalizeName(name));

  name = null;
  print(capitalizeName(name));
}
```

<br>

#### Typedef

함수 타입을 정의하기 위한 키워드이다. 함수 타입을 정의하면 해당 타입을 변수에 할당하거나 함수의 매개변수 또는 반환 타입으로 사용할 수 있다.

```dart
typedef ListType = List<int>;
typedef DataType = Map<String, String>;

ListType reverseList(List<int> list) {
  var reverse = list.reversed;
  return reverse.toList();
}

String sayHello(DataType datas) {
  return 'hello ${datas['name']}';
}

void main() {
  print(reverseList([1, 2, 3]));
  print(sayHello({"name": 'kyh'}));
}
```
