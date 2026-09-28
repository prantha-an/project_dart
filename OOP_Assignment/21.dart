enum OrderStatus { pending, shipped, delivered }

void showMessage(OrderStatus status) {
  switch (status) {
    case OrderStatus.pending:
      print('Your order is pending confirmation.');
      break;
    case OrderStatus.shipped:
      print('Your order has been shipped.');
      break;
    case OrderStatus.delivered:
      print('Your order has been delivered. Thank you!');
      break;
  }
}

void main() {
  for (OrderStatus s in OrderStatus.values) {
    print('Status: ${s.name}');
    showMessage(s);
  }
}