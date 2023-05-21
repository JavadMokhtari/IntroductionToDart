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

void main(List<String> args) {
  Duck()
    ..about()
    ..fly()
    ..swim()
    ..status();
}
