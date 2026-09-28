class Shape {
  double area() {
    return 0;
  }
}

class Rectangle extends Shape {
  double l, w;

  Rectangle(this.l, this.w);

  @override
  double area() {
    return l * w;
  }
}

class Circle extends Shape {
  double r;

  Circle(this.r);

  @override
  double area() {
    return 3.14 * r * r;
  }
}

void main() {
  print(Rectangle(10, 5).area());
  print(Circle(5).area());
}
