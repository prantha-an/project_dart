int calculateArea({int length = 1, int width = 1}) {
  return length * width;
}

void main() {
  print(calculateArea(length: 5, width: 4));
}