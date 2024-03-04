import 'dart:io';

main() {
  stdout.writeln("Please Enter your first name");
  String firstName = stdin.readLineSync()!;
  stdout.writeln("Please Enter your Last name");
  String lastName = stdin.readLineSync()!;
  print('Full name is : $firstName $lastName');
}
