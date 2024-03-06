import 'dart:developer';
import 'dart:io';
import 'dart:math';

void mainMenu() {
  print(
      'Welcome in Simple Program for Collections\nPlease Choose: \n1. String Lists\n2. Numbers Lists\n3. Exit');
}

void subMenu(bool flag) {
  if (flag) {
    print(
        'Welcome in String Lists.\n1. Create List, Automatticly Filled\n2. Create List with manual fill\n3. Add to the List\n4. Remove from the List\n5. Check if in your list ?\n6. Exit');
  } else {
    print(
        'Welcome in Numeric Lists.\n1. Create List, Automatticly Filled\n2. Create List with manual fill\n3. Add to the List\n4. Remove from the List\n5. Check if in your list ?\n6. Exit');
  }
}

void fillList(List<String> stringList, List<int> numbersList, int choice) {
  switch (choice) {
    case 1:
      print('How many String you wanna to add ?');
      int size = int.parse(stdin.readLineSync()!);
      for (int i = 1; i <= size; i++) print('Please enter string number $i');
      stringList.add(stdin.readLineSync()!);
      break;
    case 2:
      print('How many number you wanna to add ?');
      int size = int.parse(stdin.readLineSync()!);
      for (int i = 1; i <= size; i++) {
        print('Please enter number $i');
        numbersList.add(int.parse(stdin.readLineSync()!));
      }
      break;
    case 3:
      stringList
          .addAll(['Ahmad', 'Osama', 'Khalid', 'Yassin', 'Fareed', 'Muhsen']);
      break;
    case 4:
      Random random = new Random();
      for (int i = 0; i < 6; i++) numbersList.add(random.nextInt(20));
      break;
    default:
      break;
  }
}

void run() {
  List<String> stringsList = [];
  List<int> numbersList = [];
  String userInput;
  int mainChoice = 100, subChoice = 100;
  do {
    mainMenu();
    mainChoice = int.parse(stdin.readLineSync()!);
    switch (mainChoice) {
      case 1:
        do {
          subMenu(true);
          subChoice = int.parse(stdin.readLineSync()!);
          switch (subChoice) {
            case 1:
              print('your list is created');
              fillList(stringsList, numbersList, 3);
              print('List item = $stringsList');

              break;
            case 2:
              print('your list is created');
              fillList(stringsList, numbersList, 1);
              print('List item = $stringsList');
              break;
            case 3:
              print('Please enter string');
              stringsList.add(stdin.readLineSync()!);
              print('Your List after Add $stringsList');
              break;
            case 4:
              print(
                  'Please enter string that you wanna to remove it in note that this is your list $stringsList');
              stringsList.remove(stdin.readLineSync()!);
              print('Your list after edit $stringsList');
              break;
            case 5:
              print('Please enter string that you wanna to find');
              userInput = stdin.readLineSync()!;
              if (stringsList.any((element) => element == userInput))
                print('exist');
              else
                print('dose not exist');
              break;
            default:
              print('Wrong Choice Please Re-Enter');
              break;
          }
        } while (subChoice != 6);
        break;
      case 2:
        do {
          subMenu(false);
          subChoice = int.parse(stdin.readLineSync()!);
          switch (subChoice) {
            case 1:
              print('your list is created');
              fillList(stringsList, numbersList, 4);
              print('List items = $numbersList');
              break;
            case 2:
              print('your list is created');
              fillList(stringsList, numbersList, 2);
              print('List items = $numbersList');
              break;
            case 3:
              print('Please enter number');
              numbersList.add(int.parse(stdin.readLineSync()!));
              print('Your List after Add $numbersList');
              break;
            case 4:
              print(
                  'Please enter number that you wanna to remove it in note that this is your list $numbersList');
              numbersList.remove(int.parse(stdin.readLineSync()!));
              print('Your list after edit $numbersList');
              break;
            case 5:
              print('Please enter number that you wanna to find');

              userInput = stdin.readLineSync()!;
              if (numbersList.any((element) => element == int.parse(userInput)))
                print('exist');
              else
                print('dose not exist');
              break;
            default:
              print('Wrong Choice Please Re-Enter');
              break;
          }
        } while (subChoice != 6);
        break;
      case 3:
        print('Thanks for use my program');
        break;
      default:
        print('Wrong Choice Please Re-Enter');
        break;
    }
  } while (mainChoice != 3);
}

void main() {
  run();
}
