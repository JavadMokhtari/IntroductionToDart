// Multi-level Inheritance
// Polymorphism
// Abstract class
// Interface
// Mixin

void main(List<String> args) {
  Duck()
    ..about()
    ..fly()
    ..swim()
    ..status();
}

// Multi-level Inheritance
class School {}

class Library extends School {}

class Book extends Library {}

// Polymorphism is the ability of an object to take on many forms.
// Child class and parent class have the methods with same names.
class Pet {
  void eat() {
    print("Pet is eating");
  }
}

class Dog extends Pet {
  @override
  void eat() {
    print("Dog is eating");
  }
}

// Abstract class
/*
# The abstract class may or may not have abstract methods i.e. it can have 
either abstract or concrete methods.
# A class declared as abstract can’t be initialized.
# An abstract class can be extended, but if you inherit it then you have to make
sure that all the abstract methods in it are provided with implementation.
*/
abstract class Car {
  int maxSpeed();
  String properties();
  String status() => "Car is ready";
}

class Pegout extends Car {
  @override
  int maxSpeed() => 220;

  @override
  String properties() => """
                        Brand: Pegout,
                        Model: 206,
                        color: black,
                        Year: 2020
                        """;
}

/*
Interface (is not inheritance):
An interface specifies the syntax that all classes must follow. It defines a set
of methods for an object. When a class implements an interface, it must override
all its methods and instance variables. (using "implements" keyword)
# The "class" declaration is also an interface in Dart.
*/
class Speaker {
  // Has some methods
}

class Remote {
  // Has some methods
}

class TV implements Speaker, Remote {
  // All methods of Speaker and Remote classes must override in this class
}

/*
Mixin:
A "mixin" is a class with methods and properties utilized by other classes. In 
other words, are regular classes from which we can grab methods (or variables) 
without having to extend them. It allows you to add extra features to classes in
a way that standard class inheritance doesn’t allow. To accomplish this, we use 
the "with" keyword.
*/
class Bird {
  void status() {
    print("Bird is eating");
  }
}

// Define mixin
mixin Swim {
  void swim() {
    print("Animal can swim");
  }
}

// Restrict mixin to a special class
mixin Fly on Bird {
  void fly() {
    print("Bird can fly");
  }
}

class Duck extends Bird with Fly, Swim {
  void about() {
    print("Duck is white");
  }
}
