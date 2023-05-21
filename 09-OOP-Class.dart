// class
class Person {
// Property --> constant and variable
  String name = "No Name";

// Method --> function
  void info() {
    print("The person name is $name");
  }
}

void main(List<String> args) {
  // Instantiation
  Person person = Person();
  print(person);
  print(person.name);
  person.info();
}
