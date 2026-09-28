extension StringCasing on String {
  String toCapitalized() =>
      isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
}

void main() {
  print('prantha'.toCapitalized());
  print('dart is fun'.toCapitalized());
  print(''.toCapitalized());
}