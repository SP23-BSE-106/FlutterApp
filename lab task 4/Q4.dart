import 'dart:io';

class Student {
  String name;
  int rollNo;
  double marks;

  Student(this.name, this.rollNo, this.marks);

  @override
  String toString() {
    return 'Name: $name, Roll No: $rollNo, Marks: $marks';
  }
}

void main() {

  Student s1 = Student("Ali", 101, 85);

  File file = File("students.txt");
  file.writeAsStringSync("${s1.toString()}\n");

  String data = file.readAsStringSync();
  print(data);
}
