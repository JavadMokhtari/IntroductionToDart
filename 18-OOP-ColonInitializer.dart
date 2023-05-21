// Initializer List

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

void main(List<String> args) {
  Point p = Point(1.2, 3.9);
  double d = p.getDistance();
  print(d);

  Dog dog = Dog(dogName: 'puppy');
  print("${dog.dogName}, ${dog.animalName}");
}
