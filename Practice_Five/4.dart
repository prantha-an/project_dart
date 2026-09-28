import 'dart:io';

void main() {
  var source = File('hello.txt');
  var copy = source.copySync('hello_copy.txt');
  print('File copied to ${copy.path}');
}
