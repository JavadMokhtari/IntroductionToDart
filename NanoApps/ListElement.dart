import 'dart:math';

void main(List<String> args) {
  // Create an instance from Random class
  Random randInt = Random();
  // Fill a list with zero value
  List<int> myList = List<int>.filled(20, 0);
  // Give random values to defined list
  for (int i = 0; i < myList.length; i++) {
    myList[i] = randInt.nextInt(10);
  }
  // Print values less than 5
  // for (int idx = 0; idx < myList.length; idx++) {
  //   if (myList[idx] <= 5) {
  //     print(myList[idx]);
  //   }
  // }
  print([
    for (int value in myList)
      if (value < 5) value
  ]);
}
