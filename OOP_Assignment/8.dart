class Employee {
  String name;
  String designation;
  double salary;

  Employee(this.name, this.designation, this.salary);
}

void main() {
  Employee e1 = Employee("Prantha", "Developer", 50000);
  Employee e2 = Employee("Anni", "Designer", 45000);
  Employee e3 = Employee("Roudro", "Manager", 60000);

  List<Employee> employees = [e1, e2, e3];

  for (Employee e in employees) {
    print("Name : ${e.name}");
    print("Designation : ${e.designation}");
    print("Salary : ${e.salary}");
    print("");
  }
}