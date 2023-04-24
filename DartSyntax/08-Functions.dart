void main(List<String> args) {
  /*
  # Functions
  # ReturnType functionName(argrments) {functionBody}
  
  # Inside main  --> first define then use
  # Outside main --> no matter
  */

  // Both function and variable are object in Dart
  // So we can assign function to variable
  var hello = myFunc4;
  print(hello('Javad', lastName: 'Mokhtari'));

  myFunc5(myFunc3, "Milad");
  print(myFunc7.runtimeType);
}

// Arguments
// 1. Required Arguments
double myFunc1(int number) {
  return number * 0.01;
}

// 2. Optional Positional Arguments
// First required arguments then optional arguments
String myFunc2(String name, [int? age]) {
  if (age != null) {
    return "Hi, $name. You're $age";
  }
  return "Hi $name";
}

// 3. Optional Named Argument
// When call this function, should mention optional arguments's name
String myFunc3(String name, {String? lastName}) {
  if (lastName != null) {
    return "Hi, $name $lastName";
  }
  return "Hi, $name";
}

// 4. Optional Arguments with Default Value
String myFunc4(String name, {required String lastName, int age = 25}) {
  return "Hi $name $lastName; You're $age years old.";
}

// Pass a function as input argument to another function
void myFunc5(Function func, String name) {
  print(func(name));
}

// Arrow Function
int sum(int num1, int num2) => num1 + num2;

/*
Lambda Function (Anonymous function)
(String msg) {
  print(msg.toUpperCase());
}
*/

// Define Arbitrary Type
typedef ScoreData = List<int>;
ScoreData myFunc6(int n1, int n2, int n3) {
  List<int> scores = [n1, n2, n3];
  return scores;
}

typedef getName = String Function(String);
getName myFunc7(int name) {
  return (String name) => name;
}
