/*
Exception Handling:
# "try" with "on" or "catch" or "both"
# "finally" is optional
# "throw" is used to explicitly raise an exception

try {} on ExceptionName {}

try {} catch(e) {}

try {} on ExceptionName catch(e) {}

try { 
}  
on ExceptionName { 
}
on ExceptionName catch(e){ 
}
catch(e) {             
}
finally {
}
*/

// Define an Exception
import 'dart:io';

class AgeException implements Exception {
  String rangeError() => "Input number is not in human age range";
  String invalidInput() => "Your value is null or not contains only numbers";
}

bool getAge(int age) {
  if (age < 0 || age > 150) {
    throw AgeException();
  }
  return true;
}

void main(List<String> args) {
  // First Example:
  try {
    print(5 / 0);
  } on UnsupportedError {
    print("Unsupported Error");
  } catch (e) {
    print(e);
  } finally {
    print("Done!");
  }

  // Second Example:
  try {
    print("Enter your age:");
    String? input = stdin.readLineSync();
    if (input != null) {
      int yourAge = int.parse(input);
      if (getAge(yourAge)) {
        print("OK!");
      } else {
        throw AgeException();
      }
    } else {
      throw AgeException();
    }
  } on AgeException catch (e) {
    print(e);
    print("${e.rangeError()} or: ${e.invalidInput()}");
  } catch (e) {
    print(e);
  }
}
