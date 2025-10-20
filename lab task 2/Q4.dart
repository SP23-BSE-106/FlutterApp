import 'dart:io';

class Student {
  String name;
  int rollNo;
  int marks;

  Student(this.name, this.rollNo, this.marks);

  void saveToFile() {
    File file = File('students.txt');
    file.writeAsStringSync('Name: $name, Roll No: $rollNo, Marks: $marks');
  }

  void readFromFile() {
    File file = File('students.txt');
    String data = file.readAsStringSync();
    print(data);
  }
}

void main() {
  Student s1 = Student('Munir', 202, 92);
  s1.saveToFile();
  s1.readFromFile();
}
