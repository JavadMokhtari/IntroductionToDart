// Encapsulation
// Inheritance
// Colon :
// assert

void main(List<String> args) {
  // Encapsulation
  Car2 c2 = Car2(speed: 200);
  // c2.speed = 100; --> Error
  c2.setSpeed = 180;
  int c2Speed = c2.getSpeed;
  print("Speed of c2 car is: $c2Speed");

  // Inheritance
  // After creating instance, both constructors of classes are run.
  Student stu1 = Student(
    name: "Amir",
    country: "Iran",
    ID: 123456,
    field: "Engineering",
    score: 17.32,
  );
  stu1.about();

  Point p = Point(1.2, 3.9);
  double d = p.getDistance();
  print(d);

  Dog dog = Dog(dogName: 'puppy');
  print("${dog.dogName}, ${dog.animalName}");
}

/* 
Encapsulation: 
means hiding data within a library, preventing it from outside factors. It helps
you control your program and prevent it from becoming too complicated.
# Declaring the class properties as private by using underscore(_).
# Providing public getter and setter methods to access and update the value of 
private property.
*/
class Car1 {
  int _speed;
  // Car1({required this._speed}); --> Error
  // Solution 1:
  Car1(this._speed) {
    print(_speed);
  }
}

class Car2 {
  late int _speed;
  // Solution 2:
  Car2({required int speed}) {
    _speed = speed;
  }

  // The setter method can be defined using the set keyword as:
  void set setSpeed(int speedValue) {
    _speed = speedValue;
  }

  // The getter method can be defined using the get keyword as:
  int get getSpeed {
    return _speed;
  }
}

// Inheritance
class Person {
  String name;
  String country;
  int ID;

  Person({
    required this.name,
    required this.country,
    required this.ID,
  }) {
    print("New Person Added");
  }

  void about() {
    print("$name lives in $country");
  }
}

class Student extends Person {
  String field;
  double score;

  Student({
    required super.name,
    required super.country,
    required super.ID,
    required this.field,
    required this.score,
  }) {
    print("New Student Added");
  }

  void location() {
    super.about();
  }

  // @override can't be affect on method (only to declare)
  // Write the new "about" function that is in parent's class
  @override
  void about() {
    print("$name lives in $country and studies in $field");
  }
}

/* 
Colon :
The part after ":" is called "initializer list". It is a comma-separated (,) 
list of expressions that can access constructor parameters and can assign to 
instance fields, even final instance fields.
*/
class Point {
  double x, y;
  final double sum, distance, mul;
  Point(this.x, this.y)
      : sum = x + y,
        distance = x - y,
        mul = x * y;
  double getSum() => sum;
  double getDistance() => distance.abs();
  double getMultiply() => mul;
}

// Also colon is used to debuging with assert
class GetURL {
  String url;
  GetURL({required this.url}) : assert(url.startsWith("https://www."));
}
// Run assert in terminal:
// $dart --enable-assert FILE-NAME.dart

// Initialize the value of child class constructor to parent class constructor
class Animal {
  String animalName;
  Animal({required this.animalName});
  // Named Constructor
  // Animal.myConstructor({required this.animalName});
}

class Dog extends Animal {
  String dogName;

  // Assign received dogName to animalName
  Dog({required this.dogName}) : super(animalName: dogName);
  // Initialize to named constructor
  // Dog({required this.dogName}) : super.myConstructor(animalName: dogName);
}
