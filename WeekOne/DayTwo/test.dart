void main() {
  List<String> tasks = ['Code', 'Sleep'];

  tasks.add('Eat');
  tasks.insert(0, "Wake up");

  print(tasks);

  tasks.remove('Code');

  print(tasks);
}
