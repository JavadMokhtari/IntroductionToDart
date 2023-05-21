// Constructors
// 1. Default Constructors
class Person1 {
  String? name;

  Person1();
}

// 2. Generative or Parameterized Constructors
class Person2 {
  String? name;
  int? age;

  Person2({
    required String this.name,
    required int this.age,
  }) {
    print("Hi, ${this.name}");
  }
  /* "this" keyword:
  The this keyword is used to refer to the current class instance. this can be 
  used to invoke the current class’s constructors or methods.
  */
}

// 3. Named Constructors
class Person3 {
  String? name;
  int? age;

  Person3(String this.name) {
    print("Hi $name");
  }
  Person3.myCustomConstructor(int this.age) {
    print("You're ${this.age} years old.");
  }
}

// 4. Const Constructors
class Person4 {
  final String name;

  // Const constructors can't have a body and can't define it for a
  // class with non-final fields. "name" variable is not changeable.
  const Person4(String this.name);
}

void main(List<String> args) {
  Person1 p1 = Person1();
  p1.name = "Amir";
  p1.name = "Javad";
  print(p1.name);

  Person2 p2 = Person2(name: "Leila", age: 19);
  p2.age = 20;

  Person3 p31 = Person3("Mahsa");
  p31.age = 30;

  Person3 p32 = Person3.myCustomConstructor(24);
  p32.age = 26;

  // const consturctor:
  Person4 p4 = Person4("Mahdi");
  // p4.name = "Ali"; --> Error
  print(p4.name);
}
