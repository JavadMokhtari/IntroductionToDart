void main(List<String> args) {
  /*
  # Statements

  if (condition) {
    expression ...
  } else if (condition) {
    expression ...
  } else {
    expression ...
  }
  */
  int a = 4;
  bool b = true;
  bool c = false;
  int? d = null;

  // 1.
  (a == 4) ? print(b) : print(a);
  // 2.
  print(d ?? b);

  // "switch case" statement
  switch (a) {
    case 0:
      {
        print("It's Zero");
        break;
      }
    case 1:
      {
        print("That's True");
        return;
      }
    default:
      {
        print("Case not founded");
      }
  }

  /*
  # "for" statement
  for(initialize; condition; step) {
  Do something!
  }
  */
  for (int i = 0; i < 10; i++) {
    if (i == 9) {
      print("for loop completed");
    }
  }

  for (int n in [1, 2, 3]) {
    if (n.isEven) {
      print("$n is even");
    }
  }

  while (true) {
    break;
  }

  do {
    print("do while LOOP");
  } while (c);

  // We can name the loops to use "continue" and "break" which we want
  // If only use "break" or "continue" command, then applies nearest loop
  outerLoop:
  for (int i = 1; i <= 3; i++) {
    innerLoop:
    for (int j = 1; j <= 3; j++) {
      if (i == 1 && j == 3) {
        continue innerLoop;
      }
      if (i == 2 && j == 2) {
        break outerLoop;
      }
      print("$i, $j");
    }
  }
}
