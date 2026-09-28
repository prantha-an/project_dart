class Company {
  String name;
  double basicSalary;

  Company(this.name, this.basicSalary);

  double monthlySalary() => basicSalary;

  void display() {
    print('$name ($runtimeType) monthly salary: ${monthlySalary().toStringAsFixed(2)}');
  }
}

class Manager extends Company {
  double bonusPercent;

  Manager(String name, double basicSalary, this.bonusPercent)
      : super(name, basicSalary);

  @override
  double monthlySalary() => basicSalary + (basicSalary * bonusPercent / 100);
}

class Developer extends Company {
  int overtimeHours;
  double hourlyRate;

  Developer(String name, double basicSalary, this.overtimeHours, this.hourlyRate)
      : super(name, basicSalary);

  @override
  double monthlySalary() => basicSalary + (overtimeHours * hourlyRate);
}

void main() {
  List<Company> staff = [
    Manager('Nabila', 50000, 20),
    Developer('Prantha', 40000, 10, 500),
  ];

  for (var s in staff) {
    s.display();
  }
}