void main() {
  List<String> tasks = [];
  tasks.add("Study");
  tasks.add("Sleep");
  tasks.add("Eat");

  print(tasks);

  tasks.remove("Sleep");
  print(tasks);
}