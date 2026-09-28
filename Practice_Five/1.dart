import 'dart:io';

void main() {
  var file = File('hello.txt');
  file.writeAsStringSync('Prantha');
  print('Name written to hello.txt');
}
