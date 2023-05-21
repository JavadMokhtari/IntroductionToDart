void main(List<String> args) {
  int a = 3;
  int b = 7;

  /*
  Arithmetic Operators:
  + - * /
  a++;
  b--;
  a ~/ b
  a % b
  */
  print(a++);
  print(a ~/ b);
  print(a % b);

  /*
  Equality Operators:
  < > <= >= != ==
  */
  print(a != b);

  /*
  Assignment Operators:
  = += -+ *= /= %=
  */
  print(a += b);
  print(b %= a);

  /*
  Logical Operators:
  && : and
  || : or
  */
  print(a == b || a != b);

  /*
  Test Type Operators:
  like "is!"
  "!" in front of reserved word means "Not"
  "!" in end of variable name means "null safety" 
  and variable can't be null
  */
  int? c;
  print(c!); // throw error
}
