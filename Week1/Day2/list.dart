void main() {
  List<String> tasks = ['Code', 'Sleep'];

  tasks.add('Eat');
  tasks.insert(1, "Wake up");

  print(tasks);

  print(tasks);

  if (tasks.contains('Code')) {
    print("True");
  } else {
    print("False");
  }

  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8];

  List<int> evenNums = nums.where((n) => n % 2 == 0).toList();

  print(nums);
  print(evenNums);
}
