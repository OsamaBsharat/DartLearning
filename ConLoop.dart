/**
1. Write a dart program to check if the number is odd or even.
2. Write a dart program to check whether a character is a vowel or consonant.
3. Write a dart program to check whether a number is positive, negative, or zero.
4. Write a dart program to print your name 100 times.
5. Write a dart program to calculate the sum of natural numbers.
6. Write a dart program to generate multiplication tables of 5.
7. Write a dart program to generate multiplication tables of 1-9.
8. Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.
9. Write a dart program to print 1 to 100 but not 41.
 */

import 'dart:io';

main() {
  int number, sum = 0, number2, calChoice, choice = 100;
  String myString;
  do {
    print(
        'Please Enter : \n1.check if the number is odd or even.\n2.check whether a character is a vowel or consonant.\n3.check whether a number is positive, negative, or zero.\n4.print your name 100 times.\n5.calculate the sum of natural numbers.\n6.generate multiplication tables of 5\n7.generate multiplication tables of 1-9.\n8.simple calculator.\n9.print 1 to 100 but not 41.\n10.Exit');
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.writeln("Please Enter The Number");
        number = int.parse(stdin.readLineSync()!);
        if (number % 2 == 0) {
          print('the number is even');
        } else {
          print('the number is odd');
        }
        break;
      case 2:
        String myChar;
        myString = stdin.readLineSync()!;
        myChar = myString[0];
        if (myChar == 'A' ||
            myChar == 'a' ||
            myChar == 'E' ||
            myChar == 'e' ||
            myChar == 'I' ||
            myChar == 'i' ||
            myChar == 'O' ||
            myChar == 'o' ||
            myChar == 'U' ||
            myChar == 'u') {
          print('this is vowel char.');
        } else {
          print('this is constat char.');
        }
        break;
      case 3:
        stdout.writeln("Please Enter The Number");
        number = int.parse(stdin.readLineSync()!);
        if (number == 0) {
          print('this is Zero');
        } else if (number > 0) {
          print('this is positive number');
        } else {
          print('this is negative number');
        }
        break;
      case 4:
        stdout.writeln('Please Ebter Your name');
        myString = stdin.readLineSync()!;
        for (int i = 0; i < 100; i++) {
          print('$myString');
        }
        break;
      case 5:
        for (int i = 0; i < 100; i++) {
          sum += i;
        }
        print('the sum of the N numbers = $sum ');
        break;
      case 6:
        print('Product Table of 5');
        for (int i = 0; i < 10; i++) {
          print('$i * 5 = \t ${i * 5}');
        }
        break;
      case 7:
        for (int i = 1; i <= 9; i++) {
          print('Product Table of $i');
          for (int j = 0; j <= 10; j++) {
            print('$i* $j = \t ${i * j}');
          }
        }
        break;
      case 8:
        print(
            'You Are Using now Using My Calc. Please Choose\n1.Add.\n2.Sub.\n3.Mul.\n4.Div.');
        calChoice = int.parse(stdin.readLineSync()!);

        switch (calChoice) {
          case 1:
            stdout.writeln("Please Enter two number");
            number = int.parse(stdin.readLineSync()!);
            number2 = int.parse(stdin.readLineSync()!);
            print('$number + $number2 = ${number + number2}');
            break;
          case 2:
            stdout.writeln("Please Enter two number");
            number = int.parse(stdin.readLineSync()!);
            number2 = int.parse(stdin.readLineSync()!);
            print('$number - $number2 = ${number - number2}');
            break;
          case 3:
            stdout.writeln("Please Enter two number");
            number = int.parse(stdin.readLineSync()!);
            number2 = int.parse(stdin.readLineSync()!);
            print('$number * $number2 = ${number * number2}');
            break;
          case 4:
            stdout.writeln("Please Enter Neum. number");
            number = int.parse(stdin.readLineSync()!);
            stdout.writeln("Please Enter Denom. number");
            number2 = int.parse(stdin.readLineSync()!);
            if (number2 == 0) {
              print('Undifind vale');
            } else {
              print('$number / $number2 = ${number / number2}');
            }
            break;
          case 5:
            print('Thanks for Use My Simple Calc.');
            break;
          default:
            print('Wrong Choice');
            break;
        }
        break;
      case 9:
        for (int i = 1; i <= 100; i++) {
          if (i != 41) {
            print('$i');
          }
        }
        break;
      case 10:
        print('Thanks for Use my Program');
        break;
      default:
        print('Wrong Choice');
        break;
    }
  } while (choice != 10);
}
