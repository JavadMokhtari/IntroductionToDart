/* 
Cascade Operator:
The cascade notation (. .) allows you to make a sequence of operations on the 
same object (including function calls and field access). This helps keep code 
compact and removes the need to create temporary variables to store data.
*/
class Person {
  void method1() => print("It's method 1");
  void method2() => print("It's method 2");
}

void main(List<String> args) {
  // Using cascade operator when instantiation
  Person person = Person()
    ..method1()
    ..method2();

  // Using without cascade operator
  person.method1();
  person.method2();

  // Using cascade operaotr without instantiation
  Person()
    ..method1()
    ..method2();
}
