
import 'dart:math';

void password() {
  Random random = Random();
  int pass = random.nextInt(1000000);
  print("Password : $pass");
}

void main() {
  password();
}
