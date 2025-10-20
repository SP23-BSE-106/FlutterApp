class Person {
  String _name = "";
  int _age = 0;

  Person(this._name, this._age);

  String get name => _name;
  set name(String n) => _name = n;

  int get age => _age;
  set age(int a) => _age = a;
}
class Employee extends Person {
  double _salary = 0;

  Employee(String name, int age, this._salary) : super(name, age);

  double get salary => _salary;
  set salary(double s) => _salary = s;

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
