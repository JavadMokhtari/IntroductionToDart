import 'dart:io';

String twoFer(String name) =>
    name.length > 0 ? 'One for $name, one for me' : 'One for you, one for me';

void main(List<String> args) {
  print("Enter Your Name:");
  String newName = stdin.readLineSync().toString();
  print(twoFer(newName));
}
