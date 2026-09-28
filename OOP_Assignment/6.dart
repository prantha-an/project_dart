class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    balance = balance + amount;
  }

  void withdraw(double amount) {
    balance = balance - amount;
  }
}

void main() {
  BankAccount account = BankAccount(5000);

  account.deposit(2000);
  print("After Deposit : ${account.balance}");

  account.withdraw(1000);
  print("After Withdraw : ${account.balance}");
}
