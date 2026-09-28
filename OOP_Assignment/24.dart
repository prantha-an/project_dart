class Box<T> {
  T value;
  Box(this.value);

  T getValue() => value;

  void show() => print('Box holds: $value (type: ${value.runtimeType})');
}

void main() {
  Box<int> b1 = Box(100);
  Box<String> b2 = Box('Dart');
  Box<double> b3 = Box(3.14);

  b1.show();
  b2.show();
  b3.show();
}