class Person {
  String _name = "";
  int _age = 0;

  Person(this._name, this._age);

  String get name => _name;
  set name(String value) => _name = value;

  int get age => _age;
  set age(int value) => _age = value;
}

class Employee extends Person {
  int salary;

  Employee(String name, int age, this.salary) : super(name, age);

  void showDetails() {
    print("Name: $name");
    print("Age: $age");
    print("Salary: $salary");
  }
}

void main() {
  Employee emp = Employee("Munazza Javed", 22, 55000);
  emp.showDetails();
}
