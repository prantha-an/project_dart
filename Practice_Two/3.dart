import 'dart:io';

void main() {
  print("Enter a number");
  int num = int.parse(stdin.readLineSync()!);
  if (num > 0) {
    print("$num is positive");
  } else if (num < 0) {
    print("$num is Negative");
  } else {
    print("Number is zero");
  }
}
