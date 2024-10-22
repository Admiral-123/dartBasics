import 'dart:io';

void main() {
  stdout.write("enter your name: ");

  var name = stdin.readLineSync();

  print("welcome, $name");
}
