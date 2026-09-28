abstract class Payment {
  double amount;
  Payment(this.amount);

  void pay(); // abstract
}

class CashPayment extends Payment {
  CashPayment(double amount) : super(amount);

  @override
  void pay() => print('Paid $amount BDT in cash.');
}

class CardPayment extends Payment {
  String cardNo;
  CardPayment(double amount, this.cardNo) : super(amount);

  @override
  void pay() => print('Paid $amount BDT using card ending with $cardNo.');
}

void main() {
  List<Payment> payments = [CashPayment(1500), CardPayment(2500, '4417')];
  for (var p in payments) {
    p.pay();
  }
}