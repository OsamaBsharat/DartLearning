import 'dart:io';

main() {
  stdout.writeln("Please Enter the Value Of P");
  double p = double.parse(stdin.readLineSync()!);
  stdout.writeln("Please Enter the Value Of T");
  var t = double.parse(stdin.readLineSync()!);
  stdout.writeln("Please Enter the Value Of R");
  var r = double.parse(stdin.readLineSync()!);
  var formula=p*t*r/100;
  print(formula);
}
