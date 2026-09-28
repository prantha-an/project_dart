import 'dart:io';

void main() {
  print("First name: ");
  String? firstName = stdin.readLineSync();
  print("Last name: ");
  String? lastName = stdin.readLineSync();
  print("Full name: $firstName $lastName");
}
