// ignore_for_file: avoid_print
// Calculator of two number  Arthmetic operators
// void main() {
//   double a = 20;
//   double b = 56;

//   calculator(a, b, '-');
// }

// calculator(double a, double b, String operator) {
//   switch (operator) {
//     case '+':
//       print("The Sum of the numbers is ${a + b}");
//       break;
//     case '-':
//       print("The Sum of the numbers is ${a - b}");
//       break;
//     case '*':
//       print("The Sum of the numbers is ${a * b}");
//       break;
//     case '%':
//       print("The Sum of the numbers is ${a % b}");
//       break;
//     case '/':
//       print("The Sum of the numbers is ${a / b}");
//       break;

//   }
// }

// increament operators
// void main() {
//   int a = 2;
//   print(a--);
// }

// void main() {
//   for (int i = 0; i < 7; i++) {
//     print("Hello wORLD $i");
//   }
// }

// void main() {
//   var age = 19;

//   if (age > 18) {
//     print("The Boy is Adult");
//   } else {
//     print("Still the boy is teeneager");
//   }
// }

// void main() {
//   String name1 = "Manish";
//   String name2 = "manish";
//   print(name1 == name2);
// }

// void main() {
//   int? a;
//   int? b;
//   int? c;
//  print( Greater(a = 20, b = 89, c = 90));
// }

// int Greater(int a, int b, int c) {
//   if (a > b && a > c) {
//     return a;
//   } else if (b > c) {
//     return b;
//   } else {
//     return c;
//   }
// }

// void main() {
//   int a = 56;
//   // ignore: unnecessary_type_check
//   print(a is! double);
// }

// void main() {
//   int x = 56;
//   if (x > 0 && x < 100) {
//     print("true");
//   } else if (x > 0 || x > 100) {
//     print(true);
//   }
//   else{
//     print(false);
//   }
// }

// void main() {
//   greater(10, 20);
// }

// void greater(int a, int b) {
//   int result = a + b;
//   print("The sum of the number is $result");
// }

// void main() {
//   var number = <int>[];
//   for (int i = 0; i <= 10; i++) {
//     number.add(i);
//   }
//   print(number);
// }

// void main() {
//   List<String> languages = ["Python", "Ruby", "c"];
//   languages.add("peter");
//   for (int i = 0; i < languages.length; i++) {
//     print(languages[i]);
//   }
// }

// void main() {
//   var names = <String>[];

// }

// class Manish {
//   String? phonenumber;
//   String? gender;
//   String? bestfriendname;

//   Manish(this.phonenumber, this.gender, this.bestfriendname);
//   void introduce() {
//     print(
//       "My phone number is $phonenumber , what gender are you $gender , who is your bestfriend? $bestfriendname",
//     );
//   }
// }

// void main() {
//   Manish m1 = Manish("63093863636", "Male", "peter");
//   m1.introduce();
// }

import 'dart:io';

class Todo {
  List<String> tasklist = [];

  void add(String taskname) {
    tasklist.add(taskname);
    print("Task added successfully.");
  }

  void update(int index, String newTask) {
    if (index >= 0 && index < tasklist.length) {
      tasklist[index] = newTask;
      print("Task updated successfully.");
    } else {
      print("Invalid index!");
    }
  }

  void delete(int index) {
    if (index >= 0 && index < tasklist.length) {
      tasklist.removeAt(index);
      print("Task deleted successfully.");
    } else {
      print("Invalid");
    }
  }

  void display() {
    if (tasklist.isEmpty) {
      print("Your to-do list is empty.");
    } else {
      print("Your Tasks:");
      for (int i = 0; i < tasklist.length; i++) {
        print("$i: ${tasklist[i]}");
      }
    }
  }

  void close() {
    print("The to-do list is closed.");
    exit(0); // Terminates the program
  }
}

void main() {
  Todo t1 = Todo();

  while (true) {
    print("\n====== TO DO LIST MENU ======");
    print("1) Add");
    print("2) Delete");
    print("3) Update");
    print("4) Display");
    print("5) Close");
    stdout.write("Enter your choice: ");
    String? option = stdin.readLineSync();

    switch (option) {
      case '1':
        stdout.write("Enter the task name: ");
        String? task = stdin.readLineSync();
        t1.add(task ?? "");
        break;

      case '2':
        stdout.write("Enter the index to delete: ");
        int index = int.parse(stdin.readLineSync()!);
        t1.delete(index);
        break;

      case '3':
        stdout.write("Enter the index to update: ");
        int index = int.parse(stdin.readLineSync()!);
        stdout.write("Enter the new task: ");
        String? newTask = stdin.readLineSync();
        t1.update(index, newTask ?? "");
        break;

      case '4':
        t1.display();
        break;

      case '5':
        t1.close();
        break;

      default:
        print("Invalid option. Please choose from 1 to 5.");
    }
  }
}
