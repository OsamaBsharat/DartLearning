import 'dart:io';
//Write a program to print a square of a number using user input.
main() {
  stdout.writeln("Please Enter the number i will find the square of it :)");
  int number = int.parse(stdin.readLineSync()!);
  number *= number;
  print('the Squre = $number');
}
