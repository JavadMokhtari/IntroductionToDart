// ignore_for_file: unused_local_variable
class Animal {}

class Dog extends Animal {}

void main(List<String> args) {
  // Type casting:
  Animal animal = Dog();
  // Dog dog = animal; --> static type checking error
  Dog dog = animal as Dog;
  print(dog);

  // Type Safety:
  var x = 10;
  // x = "Ramin"; --> Error
  // "dynamic" keyword
  dynamic y = 10;
  y = "Ramin";
}
