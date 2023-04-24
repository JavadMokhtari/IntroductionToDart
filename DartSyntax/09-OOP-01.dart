// Constructors
// Callable class
// static
// enum
// Cascade operator

void main(List<String> args) {
  // class --> object
  // Property --> constant and variable
  // Method --> function

  // Instantiation
  Person1 p1 = Person1();
  p1.name = "Amir";
  p1.name = "Javad";
  print(p1.name);

  Person2 p2 = Person2(name: "Leila", age: 19);

  Person3 p31 = Person3("Mahsa");
  Person3 p32 = Person3.myCustomConstructor(24);

  // const consturctor:
  Person4 p4 = Person4("Mahdi");
  // p4.name = "Ali"; --> Error
  print(p4);

  // Callable class
  var wf = WannabeFunction();
  var out = wf('Hi', 'there,', 'Gang');
  print(out);

  Person5 p51 = Person5(name: "Ali", sex: Sex.male);
  Person5 p52 = Person5(name: "Javad", sex: Sex.male);
  Person5 p53 = Person5(name: "Sara", sex: Sex.female);
  Person5 p54 = Person5(name: "Mina", sex: Sex.female);
  print(Person5.about());
}

// Constructors
// 1. Default Constructors
class Person1 {
  late String name;
  Person1();
}

// 2. Generative / Parameterized Constructors
class Person2 {
  String? name;
  int? age;
  // sugar syntatic
  Person2({
    required String this.name,
    required int this.age,
  }) {
    /* "this" keyword:
  The this keyword is used to refer to the current class instance. this can be 
  used to invoke the current class’s constructors or methods.
  */
    print("Hi, ${this.name}");
  }
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

// Change string message when printing an instance of object
// toString() is default method for classes that we change it.
  @override
  String toString() {
    return "This is my custom settings ${this.name}";
  }
}

/*
Callable Classes
To allow an instance of your Dart class to be called like a function, implement
the call() method.
*/
class WannabeFunction {
  String call(String a, String b, String c) => '$a $b $c!';
}

// Static
// static variables refer to the variables that are declared inside a class
class Person5 {
  // Instance variables:
  // instances can access them
  String? name;
  Sex sex;

  // Static Variables or Class Variables :
  // Only class can access them and can help to optimize memory
  static int male = 0;
  static int female = 0;

  // Get number of instances with Person5.count
  Person5({
    required this.name,
    required this.sex,
  }) {
    if (sex == Sex.male) {
      male += 1;
    } else if (sex == Sex.female) {
      female += 1;
    } else {
      throw "Enter male or female for sextuality";
    }
  }

  // Static Methods
  // only class can access this method
  static List<int> numberStudent() => [male, female];

  static String about() {
    List<int> sexList = numberStudent();
    return "There are ${sexList[0]} mans and ${sexList[1]} womans";
  }
}

// enum (Categorical Variables)
// Consider some features for an object
enum Sex { male, female }

/* 
Cascade Operator:
The cascade notation (. .) allows you to make a sequence of operations on the 
same object (including function calls and field access). This helps keep code 
compact and removes the need to create temporary variables to store data.
*/
class Person6 {
  void method1() => print("It's method 1");
  void method2() => print("It's method 2");
}

void myMain() {
  // Using cascade operator
  Person6 p6 = Person6()
    ..method1()
    ..method2();
  // Using cascade operaotr without instantiation
  Person6()
    ..method1()
    ..method2();
}
