
import 'dart:io';

void main() {
  print("Enter a number: ");
  int x = int.parse(stdin.readLineSync()!);
  int y = x * x;
  print("Square = $y");
}
