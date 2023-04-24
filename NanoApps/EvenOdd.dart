import 'dart:io';

String showEvenOdd(int number) {
  if (number.isEven) {
    return 'Your Number is Even';
  }
  if (number.isOdd) {
    return 'Your Number is Odd';
  }
  return 'Error';
}

void main(List<String> args) {
  try {
    print("Enter a number:");
    int myNum = int.parse(stdin.readLineSync()!);
    print(showEvenOdd(myNum));
  } on FormatException catch (error) {
    print("Input only can be a number!");
    print(error);
  } catch (error) {
    print(error);
  }
}
