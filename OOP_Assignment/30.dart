abstract class Person {
  final String name;
  final int id;

  Person(this.name, this.id);

  void displayInfo(); // abstract method
}

// INHERITANCE + POLYMORPHISM
class Student extends Person {
  double _cgpa; // ENCAPSULATION

  Student(String name, int id, this._cgpa) : super(name, id);

  double get cgpa => _cgpa;

  set cgpa(double value) {
    if (value < 0 || value > 4.0) {
      print('Invalid CGPA for $name.');
      return;
    }
    _cgpa = value;
  }

  @override
  void displayInfo() => print('Student: $name (ID: $id), CGPA: $_cgpa');
}

class Course {
  final String code;
  final String title;
  final int credit;

  Course(this.code, this.title, this.credit);

  @override
  String toString() => '$code - $title (${credit}cr)';
}

class Enrollment {
  final Student student;
  final List<Course> _courses = [];

  Enrollment(this.student);

  void enroll(Course c) {
    _courses.add(c);
    print('${student.name} enrolled in ${c.code}');
  }

  int totalCredits() {
    int total = 0;
    for (Course c in _courses) {
      total += c.credit;
    }
    return total;
  }

  void showEnrollment() {
    print('--- Enrollment Summary ---');
    student.displayInfo();
    for (Course c in _courses) {
      print('  * $c');
    }
    print('Total Credits: ${totalCredits()}');
  }
}

void main() {
  Student s = Student('Prantha', 101, 3.75);

  Course c1 = Course('CSE213', 'Object Oriented Programming', 3);
  Course c2 = Course('CSE215', 'Data Communication', 3);
  Course c3 = Course('MAT201', 'Numerical Methods', 2);

  Enrollment e = Enrollment(s);
  e.enroll(c1);
  e.enroll(c2);
  e.enroll(c3);

  e.showEnrollment();

  s.cgpa = 5.2;   // invalid
  s.cgpa = 3.85;  // valid
  s.displayInfo();
}