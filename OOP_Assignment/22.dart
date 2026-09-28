mixin LoggerMixin {
  void logMessage(String message) {
    print('[LOG - $runtimeType] $message');
  }
}

class User with LoggerMixin {
  String name;
  User(this.name);
}

class Product with LoggerMixin {
  String title;
  Product(this.title);
}

void main() {
  User u = User('Prantha');
  Product p = Product('Laptop');

  u.logMessage('User ${u.name} logged in.');
  p.logMessage('Product ${p.title} added to cart.');
}