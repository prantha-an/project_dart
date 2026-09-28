void main() {
  String str = "Hello World This is Dart Programming";
  String result = str.replaceAll(RegExp(r'\s+'), '');
  print("Before : $str");
  print("After : $result");
}
