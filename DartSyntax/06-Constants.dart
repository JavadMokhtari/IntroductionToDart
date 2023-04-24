void main(List<String> args) {
  // Constants:
  // We can't re-assign them.

  /*
  1. final:
  # A variable with the final keyword will be initialized at runtime and can 
  only be assigned for a single time.
  # In a class and function, you can define a final variable.
  # For Flutter specific, when the state is updated, everything in the build
  method will be initialized again. This includes all the variables with final.
  */
  final String name = "Amir";

  /*
  2. const:
  # A variable with the const keyword is initialized at compile-time and is
  already assigned when at runtime.
  # You can’t define const inside a class. But you can in a function.
  # For Flutter specific, everything in the build method won’t be initialized
  again when the state is updated.
  # const can’t be changed during runtime.
  */
  const String color = 'red';

  /*
  When to use which keyword?
  # Use final: If you don’t know what it’s value will be at compile-time. For 
  example, when you can need to get data from an API, this happens when running 
  your code.
  # Use const: If you are sure that a value isn’t going to be changed when 
  running your code. For example, when you declare a sentence that always 
  remains the same.
  */

  /*
  # late:
  "late" keyword is used to declare a variable or field that will be initialized
  at a later time. It is used to declare a non-nullable variable that is not 
  initialized at the time of declaration.
  */
  late int number;
  number = 1376;

  print("$name, $color, $number");
}
