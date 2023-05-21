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
