class Employee {
  void getDetails() {
    print("Employee Details");
  }
}
class Manager extends Employee {
  @override
  void getDetails() {

    super.getDetails();

    print("Manager Details: Handles team and projects.");
  }
}
void main() {
  var emp = Employee();
  emp.getDetails(); 
  var mgr = Manager();
  mgr.getDetails();  
 
}
