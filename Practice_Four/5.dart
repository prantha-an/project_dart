void main() {
  List<String> friends = [
    "Anni",
    "Shanta",
    "Asha",
    "Roudro",
    "Uday",
    "Samiul",
    "Sanjoy"
  ];

  var result = friends.where((name) => name.startsWith("A"));
  print(result);
}