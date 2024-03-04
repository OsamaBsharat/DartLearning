import 'dart:io';

//Write a program to find quotient and remainder of two integers.
//Write a program to swap two numbers.
//Write a program in Dart to remove all whitespaces from String.
//Write a Dart program to convert String to int.
//Suppose, you often go to restaurant with friends and you have to split amount of bill. Write a program to calculate split amount of bill.
main() {
  stdout.writeln("Please Enter two numbers");
  int fNum = int.parse(stdin.readLineSync()!);
  int sNum = int.parse(stdin.readLineSync()!);
  double remainder = fNum / sNum;
  int quotient = fNum ~/ sNum;
  print('Reminder = $remainder , Quotient = $quotient');
  print('numbers before swapping');
  print('$fNum \t $sNum');
  int temp = fNum;
  fNum = sNum;
  sNum = temp;
  print('numbers After swapping');
  print('$fNum \t $sNum');
  String fullName = "My Name Is Osama Bsharat";
  print('name with spaces');
  print(fullName);
  print('name without spaces');
  print(fullName.replaceAll(' ', ''));
  
}
