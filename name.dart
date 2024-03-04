import 'dart:io';
//Write a program to print full name of a from first name and last name using user input.
main() {
  stdout.writeln("Please Enter your first name");
  String firstName = stdin.readLineSync()!;
  stdout.writeln("Please Enter your Last name");
  String lastName = stdin.readLineSync()!;
  print('Full name is : $firstName $lastName');
}
