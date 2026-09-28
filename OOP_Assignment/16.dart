abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() => print('Fan is ON. Air flowing...');

  @override
  void turnOff() => print('Fan is OFF.');
}

void main() {
  Fan f = Fan();
  f.turnOn();
  f.turnOff();
}