/*
1. Write a program in Dart to print your own name using function.
2. Write a program in Dart to print even numbers between intervals using function.
3. Create a function called greet that takes a name as an argument and prints a greeting message. For example, greet(“John”) should print “Hello, John”.
4. Write a program in Dart that generates random password.
5. Write a program in Dart that find the area of a circle using function. Formula: pi * r * r
6. Write a program in Dart to reverse a String using function.
7. Write a program in Dart to calculate power of a certain number. For e.g 5^3=125
8. Write a function in Dart named add that takes two numbers as arguments and returns their sum.
9. Write a function in Dart called maxNumber that takes three numbers as arguments and returns the largest number.
10. Write a function in Dart called isEven that takes a number as an argument and returns True if the number is even, and False otherwise.
11. Write a function in Dart called createUser with parameters name, age, and isActive, where isActive has a default value of true.
12. Write a function in Dart called calculateArea that calculates the area of a rectangle. It should take length and width as arguments, with a default value of 1 for both. Formula: length * width.
*/
import 'dart:io';
import 'dart:math';

void printName() {
  print(
      'Name : Osama Shaheen \nMajor : Computer System Engineering \nPosition : Mobile Developer \nPhone Number : +970594145999 \nE-mail:Osamabsharat45@Gmail.com');
}

void printEvens(int start, int end) {
  for (int i = start; i <= end; i++) {
    if (isEven(i)) print('$i');
  }
}

void greet(String name) {
  print('\"Hello, $name\"');
}

String randomPassword() {
  Random random = new Random();
  String yourPassword = '';
  for (int i = 0; i < 10; i++) {
    yourPassword += (2 + random.nextInt((10 + 1) - 2)).toString();
  }

  return yourPassword;
}

double circleArea(double radius, [double pi = 3.14]) => pi * pow(radius, 2);
String reverseString(String str) => str.split('').reversed.join('');

double myPower(int num, int exp) {
  double power = 1;
  for (int i = 0; i < exp; i++) {
    power *= num;
  }
  return power;
}

int add(int op1, int op2) => op1 + op2;
int maxNumber(int num1, int num2, int num3) {
  int max = 0;
  if (num1 > num2 && num1 > num3)
    max = num1;
  else if (num2 > num1 && num2 > num3)
    max = num2;
  else if (num3 > num1 && num3 > num2) max = num3;
  return max;
}

bool isEven(int number) => (number % 2 == 0) ? true : false;

void createUser(String name, int age, [bool isActive = true]) {
  if (isActive)
    print('the User $name and his age is $age is created');
  else
    print('Sorry $name You are In active');
}

double calculateArea([double width = 1.0, double length = 1.0]) =>
    length * width;
void menu() {
  print(
      'Please Choose : \n1.  About Me\n2.  Even numbers\n3.  Greeting message\n4.  Your Password\n5.  Area of a circle\n6.  Reverse a String\n7.  Power\n8.  Sum\n9.  Max number\n10. EvenOrOdd\n11. SignUp\n12. Area Of Rectangle');
}

void run() {
  int number1 = 0, number2 = 0, choice = 100, number3 = 0;
  String myString;
  double radius;
  do {
    menu();
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        printName();
        break;
      case 2:
        print('please choose the interval and enter to numbers');
        number1 = int.parse(stdin.readLineSync()!);
        number2 = int.parse(stdin.readLineSync()!);
        printEvens(number1, number2);
        break;
      case 3:
        print('Please Enter Your Name');
        myString = stdin.readLineSync()!;
        greet(myString);
        break;
      case 4:
        print('Your Password is : ${randomPassword()}');
        break;
      case 5:
        print('Please Enter the Radius of your circle');
        radius = double.parse(stdin.readLineSync()!);
        print('Area of your circle is : ${circleArea(radius)}');
        break;
      case 6:
        print('Please Enter Your Text');
        myString = stdin.readLineSync()!;
        print('Your String after Reverse is : ${reverseString(myString)}');
        break;
      case 7:
        print('please Enter the Number &ex');
        number1 = int.parse(stdin.readLineSync()!);
        number2 = int.parse(stdin.readLineSync()!);
        print('Result = ${myPower(number1, number2)}');
        break;
      case 8:
        print('please Enter two number');
        number1 = int.parse(stdin.readLineSync()!);
        number2 = int.parse(stdin.readLineSync()!);
        print('Result = ${add(number1, number2)}');
        break;
      case 9:
        print('please Enter the 3 Numbers');
        number1 = int.parse(stdin.readLineSync()!);
        number2 = int.parse(stdin.readLineSync()!);
        number3 = int.parse(stdin.readLineSync()!);
        print('the max is ${maxNumber(number1, number2, number3)}');
        break;
      case 10:
        print('please Enter the Number to check if even or no');
        number1 = int.parse(stdin.readLineSync()!);
        print('${isEven(number1)}');

        break;
      case 11:
        createUser('Osama', 24);
        createUser('Shaheen', 75, false);
        break;
      case 12:
        print('please Enter Width & Length');
        number1 = int.parse(stdin.readLineSync()!);
        number2 = int.parse(stdin.readLineSync()!);
        print(
            'Area of Your Rect. = ${calculateArea(number1 * 1.0, number2 * 1.0)}');
        break;
      case 13:
        print('Thanks for Use my Program');
        break;
      default:
        print('Wrong Choice');
        break;
    }
  } while (choice != 13);
}

main() {
  run();
}
