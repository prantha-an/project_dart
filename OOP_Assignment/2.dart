class Rectangle {
  double length;
  double width;

  Rectangle(this.length, this.width); // parameterized constructor

  double area() => length * width;
  double perimeter() => 2 * (length + width);
}

void main() {
  Rectangle r = Rectangle(10, 5);
  print('Area     : ${r.area()}');
  print('Perimeter: ${r.perimeter()}');
}