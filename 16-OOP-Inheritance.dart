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

// Inheritance using "extends" keyword
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

void main(List<String> args) {
  // After creating instance, both constructors of classes are run.
  Student student = Student(
    name: "Amir",
    country: "Iran",
    ID: 123456,
    field: "Engineering",
    score: 17.32,
  );
  student.about();
}

// Multi-level Inheritance
class School {}

class Library extends School {}

class Book extends Library {}
