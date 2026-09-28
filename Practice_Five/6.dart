import 'dart:io';

void main() {
  var file = File('hello_copy.txt');
  if (!file.existsSync()) {
    file.writeAsStringSync('This is a copy file');
    print('hello_copy.txt created first');
  }
  file.deleteSync();
  print('hello_copy.txt deleted successfully');
}
