void main(List<String> args) {
  /// Dynamic Type:
  var myVar1 = 'String';
  var myVar2 = 123;
  var myVar3 = 12.345;

  /// Static Types:
  // 1. Numbers:
  int number1 = 123;
  double number2 = 12.345;
  num number3 = 123;
  num number4 = 12.345;

  // Null Safety
  // int myVar4 = null  --> Error
  int? myVar4 = null;
  // "!" operator doesn't allow variables to have "null" value
  // print(myVar4!); --> Got Error

  // Number Methods
  var number = '12.34';
  // Change type of myNumber to "int", "double" and "num"
  num myNumber = num.parse(number);

  print(myNumber.abs());
  print(myNumber.floor());
  print(myNumber.ceil());
  print(myNumber.round());

  // Remove floating numbers
  print(myNumber.truncate());

  // greater than input number: 1
  print(myNumber.compareTo(12));
  // equal input number: 0
  print(myNumber.compareTo(12.34));
  // lower than input number: -1
  print(myNumber.compareTo(13));

  // Reminder a to b
  print(myNumber.remainder(6.17));

  // Change type
  print(myNumber.toDouble());
  print(myNumber.toInt());
  print(myNumber.toString());

  // Number Properties
  print(myNumber.runtimeType);
  print(myNumber.isNegative);
  print(myNumber.sign);
  print(myNumber.isFinite);

  /*
  Arithmetic Operators:
  + - * /
  a++;
  b--;
  a ~/ b
  a % b

  Equality Operators:
  < > <= >= != ==

  Assignment Operators:
  = += -+ *= /= %=

  Logical Operators:
  && : and
  || : or

  Test Type Operators:
  like "is!"
  "!" at front of reserved word means "Not"
  "!" at front of variable name means "null safety"
  */

  // 2. Strings
  // 'Strings', "Strings", """Strings"""
  String firstName = 'Javad';
  String lastName = 'Mokhtari';

  // r"raw string"
  print(r"Raw $ string \n keeps all \t characters");

  // Concatenation Strings
  String name = firstName + ' ' + lastName;

  // Repetation String
  print(name * 3);
  print("New string $myNumber and ${number1 + number2}");

  /// String Methods
  print(name.toLowerCase());
  print(name.toUpperCase());

  // Remove spaces of front and end string
  print(name.trim());
  print(name.trimLeft());
  print(name.trimRight());

  String text = "This is my first text";
  print(text.replaceAll(RegExp('my'), 'your'));
  print(text.split(' '));
  print(name.substring(6));
  print(text.contains(firstName));
  print(text.startsWith('This'));
  print(text.endsWith('text'));
  print(text.indexOf('my'));
  // First 't' index after 10th index
  print(text.indexOf('t', 10));

  // String Properties
  print(name.isEmpty);
  print(name.length);

  // 3. Booleans
  bool a = true;
}
