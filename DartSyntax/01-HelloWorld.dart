/*
<< Introduction to Dart language >>

* Compile Time: The instructions or source code written using high-level
language is required to get converted to machine code for a computer to 
understand. During compile time, the source code is translated to a byte
code.  During compile time the compiler check for the syntax, semantic, 
and type of the code. (e.g. input: source code, output: assembly code or
compile erro message)

* RunTime: A program’s life cycle is a runtime when the program is in
execution. Following are the different types of runtime errors:
Division by zero, running out of memory, dereferencing a null pointer
(when a program attempts to access memory with a NULL)


* Static Type Checking (before compile) [Sound Typing --> Dart lang]
* Dynamic Type Checking (when compiling)

* null safety --> many languages
* sound null safety --> Dart, swift

* Sound null safety:
It's a feature of the Dart language that helps prevent null reference exceptions
a common source of crashes in many programs. With sound null safety, variables 
are non-nullable by default, meaning they can’t contain null values unless you 
explicitly allow it by adding a "?" to their type declaration.

Sound null safety provides compile-time guarantees that your code won’t throw 
null reference exceptions. This is achieved through a combination of static and 
runtime checks that ensure that nullable variables are always checked for null 
before they’re used.
*/

void main(List<String> args) {
  print("Hello World!");
}
