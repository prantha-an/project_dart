void main() {
  Map<String, dynamic> person = {
    "name": "Prantha",
    "address": "Sylhet",
    "age": 21,
    "Country": "Bangladesh"
  };

  person["Country"] = "India";
  print(person);
}