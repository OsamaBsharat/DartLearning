/*
1. Write a dart program to add your name to “hello.txt” file.
2. Write a dart program to append your friends name to a file that already has your name.
3. Write a dart program to get the current working directory.
4. Write a dart program to copy the “hello.txt” file to “hello_copy.txt” file.
5. Write a dart program to create 100 files using loop.
6. Write a dart program to delete the file “hello_copy.txt”. Make sure you have created the file “hello_copy.txt.
7. Write a dart program to store name, age, and address of students in a csv file and read it.*/
import 'dart:io';

void addtoFile(String fileName) {
  File file = new File(fileName);
  print('Please Give me your name');
  String name = stdin.readLineSync()! + '\n';
  file.writeAsStringSync(name);
  print('Your Name $name is added succesfully to the file');
}

void addAnotherNames(String fileName) {
  List names = [
    'Fareed ahmed hamed bani matar',
    'Yassin Saleh Abu Zaid',
    'Abdullah Jihad Abedlmajeed Bani Odeh',
    'Ibraheem Mustafa Omar Bsharat'
  ];
  File file = File(fileName);
  for (String name in names) {
    file.writeAsStringSync('$name\n', mode: FileMode.append);
  }
  print('Your friends names are added succesfully to the file');
  print('File absolute path: ${file.absolute.path}');
}

void copyFiles(String fileName1, String fileName2) {
  File file1 = File(fileName1);
  File file2 = File(fileName2);
  List<String> lines = file1.readAsLinesSync();

  if (!file1.existsSync() && !file2.existsSync()) {
    print('There is a problem with you files');
    if (!file1.existsSync()) {
      print('your file ${file1.path} is not found');
    }
    if (!file2.existsSync()) {
      {
        print('your file ${file2.path} is not found');
      }
    }
  }
  for (String line in lines) {
    file2.writeAsStringSync('$line\n', mode: FileMode.append);
  }
}

void create100Files() {
  for (int i = 0; i < 100; i++) {
    File file = new File('file $i.txt');
    file.writeAsStringSync('Osama $i file');
  }
}

void deleteFile(String fileName) {
  File file = File(fileName);
  file.delete();
}

void csvFile(String fileName) {
  File csvFile = new File(fileName);
  csvFile.writeAsStringSync('Name,Age,Address\n');
  String name, age, address;
  name = 'Osama Shaheen';
  age = '24.5';
  address = 'Tammoun';
  csvFile.writeAsStringSync('$name,$age,$address\n', mode: FileMode.append);
  name = 'Ahnad Shaheen';
  age = '20.5';
  address = 'Tubas';
  csvFile.writeAsStringSync('$name,$age,$address\n', mode: FileMode.append);
  name = 'Ali Shaheen';
  age = '58';
  address = 'Canda';
  csvFile.writeAsStringSync('$name,$age,$address\n', mode: FileMode.append);
  name = 'Ibraheem Shaheen';
  age = '25.5';
  address = 'Tammoun';
  csvFile.writeAsStringSync('$name,$age,$address\n', mode: FileMode.append);
}

void main() {
  // /*1.*/         addtoFile('hello.txt');
  // /*2. & 3.*/    addAnotherNames('hello.txt');
  //  /*4.*/        copyFiles('hello.txt', 'hello_copy_2.txt');
  // /*5.*/         create100Files();
  // /*6.*/         deleteFile('hello_copy.txt');
  csvFile('Studentsinfo.csv');
}
