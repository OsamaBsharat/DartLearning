import 'dart:io';

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

void run() {
  int mainChoice = 100, subChoice = 100;
  do {
    mainMenu();
    mainChoice = int.parse(stdin.readLineSync()!);
    switch (mainChoice) {
      case 1:
        do {
          subMenu(true);
          subChoice=int.parse(stdin.readLineSync()!);
          switch(subChoice){
            case 1:
            break;
            case 2:
            break;
            case 3:
            break;
            case 4:
            break;
            case 5:
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
          subChoice=int.parse(stdin.readLineSync()!);
          switch(subChoice){
            case 1:
            break;
            case 2:
            break;
            case 3:
            break;
            case 4:
            break;
            case 5:
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
