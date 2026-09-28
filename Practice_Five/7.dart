import 'dart:io';

void main() {
  var file = File('Student.csv');
  var data = 'Name, Age, Address\n'
      'Prantha, 22, Sylhet\n'
      'Rafiq, 23, Dhaka\n'
      'Karim, 20, Chittagong\n';

  file.writeAsStringSync(data);
  print('Data written to Student.csv');

  var lines = file.readAsLinesSync();
  var headers = lines[0].split(',');

  print('----- Student Records -----');
  for (int i = 1; i < lines.length; i++) {
    var values = lines[i].split(',');
    for (int j = 0; j < headers.length; j++) {
      stdout.write('${headers[j]}: ${values[j]} ');
    }
    print('');
  }
}