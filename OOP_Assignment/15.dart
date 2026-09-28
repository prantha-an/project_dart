abstract class Shape {
  double calculateArea(); // abstract method
}

class Square extends Shape {
  double side;
  Square(this.side);

  @override
  double calculateArea() => side * side;
}

void main() {
  Square sq = Square(4);
  print('Square area: ${sq.calculateArea()}');
}