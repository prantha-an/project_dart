class Car {
  Car.manual() {
    print('manual car.');
  }

  Car.automatic() {
    print('automatic car.');
  }
}

void main() {
  Car.manual();
  Car.automatic();
}