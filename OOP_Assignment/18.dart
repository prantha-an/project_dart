class Flyable {
  void fly() {}
}

class Swimmable {
  void swim() {}
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() => print('Duck is flying.');

  @override
  void swim() => print('Duck is swimming.');
}

void main() {
  Duck d = Duck();
  d.fly();
  d.swim();
}