class Student {
  String name;
  int id;
  double cgpa;

  Student(this.name, this.id, this.cgpa);
}

void main() {
  Student s1= Student('Ani', 101, 3.50);
  print("Name: ${s1.name}");
  print('ID  : ${s1.id}');
  print('CGPA: ${s1.cgpa}');
}
