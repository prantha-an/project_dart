class Person {
  void displayInfo() {
    print("I am a person");
  }
}

class Teacher extends Person {
  @override
  void displayInfo() {
    print("I am a teacher");
  }
}

class Student extends Person {
  @override
  void displayInfo() {
    print("I am a student");
  }
}

void main() {
  Teacher t = Teacher();
  Student s = Student();

  t.displayInfo();
  s.displayInfo();
}
