/*
In Dart, we use the factory keyword to identify a default or named constructor. 
We use the factory keyword to implement constructors that decides whether to 
return a new instance or an existing instance.

When using the factory constructor:
1. The "return" keyword need to be used.
2. It does not have access to the "this" keyword.

*/

// create Class Car
class Car {
  //class properties
  String name;
  String color;

  //constructor
  Car({required this.name, required this.color});

  // factory constructor that returns a new instance
  factory Car.fromJson(Map json) {
    return Car(name: json['name'], color: json['color']);
  }
}

void main() {
  // create a map
  Map myCar = {'name': 'Mercedes-Benz', 'color': 'blue'};

  // assign to Car instance
  Car car = Car.fromJson(myCar);

  //display result
  print(car.name);
  print(car.color);
}
