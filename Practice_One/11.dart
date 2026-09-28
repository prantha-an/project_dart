import 'dart:io';

void main() {
  print("Enter total bill amount: ");
  double totalBill = double.parse(stdin.readLineSync()!);
  print("Enter number of friends: ");
  int friends = int.parse(stdin.readLineSync()!);

  double splitAmount = totalBill / friends;
  print("Total Bill: $totalBill");
  print("Number of friends: $friends");
  print("Each person pays: $splitAmount");
}
