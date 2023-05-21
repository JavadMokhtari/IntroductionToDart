/*
# export:
The "export" keyword is used to re-export the contents of another library. This 
means when you import a library that exports another library, you can access the
members of both libraries. 

# Example:

// my_library.dart
library my_library;
export 'other_library.dart';

class MyClass {
  // ...
}

// other_library.dart
library other_library;

class MyOtherClass {
  // ...
}

// main.dart
import 'my_library.dart';

void main() {
  MyClass myObject = MyClass();
  MyOtherClass myOtherObject = MyOtherClass();
}

# When we want to import many libraries, we can export them in another file 
separately and then import that file
*/

export '01-HelloWorld.dart';
export '27-Packages.dart';
export '28-Libraries-01.dart';
export 'dart:math';
export 'dart:async';
export 'dart:collection';
export 'dart:io';

/*
# We can use conditional export that are commonly used to provide different 
implementations of a library for different platforms. Here's an example:

// my_library.dart
library my_library;

export 'my_library_stub.dart'
  if (dart.library.io) 'my_library_io.dart'
  if (dart.library.html) 'my_library_html.dart';

# If none of the conditions aren't true, the first library is import
*/

void myFunc16() {
  print("This is from '16-Libraries");
}
