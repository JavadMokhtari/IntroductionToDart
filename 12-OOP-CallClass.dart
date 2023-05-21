/*
Callable Classes
To allow an instance of your Dart class to be called like a function, implement
the call() method.
*/
class WannaBeFunction {
  String call(String a, String b, String c) => '$a $b $c!';
}

// Override on the toString default method of class
class Person {
  String name;
  Person(String this.name);

  // Change string message when printing an instance of object
  // toString() is default method for classes that we change it.
  // @override can't be affect on method (only to declare)
  @override
  String toString() {
    return "This is my custom settings ${this.name}";
  }
}

void main(List<String> args) {
  // Callable class
  var wf = WannaBeFunction();
  var out = wf('Hi', 'there,', 'Gang');
  print(out);

  // print instance of class
  Person person = Person("Ali");
  print(person);
}
