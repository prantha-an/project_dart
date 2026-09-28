void main() {
  Map<String, String> data = {
    "Prantha": "1234",
    "Riya": "5687",
    "Dipto": "9999"
  };

  var result = data.keys.where((key) => key.length == 4);
  print(result);
}
