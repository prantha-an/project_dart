
class Person {
  String name;

  Person(this.name);
}

class Employee extends Person {
  double salary;

  Employee(String name, this.salary) : super(name);
}

void main() {
  Employee e = Employee("Prantha", 50000);
  print("Name : ${e.name}");
  print("Salary : ${e.salary}");
}
