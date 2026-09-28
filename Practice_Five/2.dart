
import 'dart:io';

void main() {
  var file = File('hello.txt');
  file.writeAsStringSync('\nRafiq', mode: FileMode.append);
  print('Friend name appended to hello.txt');
}
