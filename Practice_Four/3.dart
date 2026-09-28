import 'dart:io';

void main() {
  List<double> expenses = [];
  double total = 0;

  print("Enter 3 expenses : ");
  expenses.add(double.parse(stdin.readLineSync()!));
  expenses.add(double.parse(stdin.readLineSync()!));
  expenses.add(double.parse(stdin.readLineSync()!));

  total = expenses[0] + expenses[1] + expenses[2];
  print("Total Expense = $total");
}