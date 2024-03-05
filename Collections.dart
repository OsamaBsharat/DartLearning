/*
1. Create a list of names and print all names using list.
2. Create a set of fruits and print all fruits using loop.
3. Create a program thats reads list of expenses amount using user input and print total.
4. Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
5. Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.
6. Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values.
7. Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
8. Create a simple to-do application that allows user to add, remove, and view their task  Note it will be in Collections-p-2.dart .
*/
import 'dart:io';

void printList(List<String> list) {
  print('For IN -----------------------------------------------------------');
  for (var name in list) {
    print(name);
  }
  print(
      'Without loop -----------------------------------------------------------');
  print(list);
  print('For Each -----------------------------------------------------------');
  list.forEach((name) {
    print(name);
  });
}

void printSet(Set<String> fruits) {
  print(fruits);
  fruits.forEach((element) {
    print(element);
  });
  for (var fruit in fruits) {
    print(fruit);
  }
}

void fillList(List<int> list) {
  for (int i = 0; i < 10; i++) {
    stdout.writeln('Please Enter the value');
    list.add(int.parse(stdin.readLineSync()!));
  }
}

int totalOfExpenses(List<int> list) {
  int sum = 0;
  for (var item in list) {
    sum += item;
  }
  return sum;
}

main() {
  List<String> names = ['Osama', 'Ibraheem', "Abdullah", 'Adam', 'Muhammad'];
  printList(names);

  Set<String> fruits = {
    'Banana',
    'Pinapple',
    'Freeze',
    'Apple',
    'Orange',
    'kiwi'
  };
  printSet(fruits);
  List<int> expenses = [];
  fillList(expenses);
  print('total of ammount = ${totalOfExpenses(expenses)}');
  List<String> days = [];
  for (int i = 0; i < 7; i++) {
    days.add(stdin.readLineSync()!);
  }
  print(days);
  names.add('Layla');
  names.add('Alma');
  names.add('Farah');
  names.add('Laith');
  names.add('Tamer');
  names.add('Ahmad');
  names.add('Murad');
  List<String> namesStartWithA = names.where((name) => name[0] == 'A').toList();
  print(namesStartWithA);

  Map<String, String> myMap = {
    'Ahmad': '0568481919',
    'Osama': '0594140599',
    'Muhammad': '0599137171',
    'Adam': '0593204501',
    'Khader': '0592272766',
    'Ibraheem': '0592319830',
    'Fadi' : '0098721651',
    'Hadi' : '1324568' 
  };

  List <String> keysLessthan4 = myMap.keys.where((key)=>key.length==4).toList();
  print(keysLessthan4);

}
