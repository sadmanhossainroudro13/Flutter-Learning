void main() {
  List<int> lst = [10, 20, 30];
  var newList = lst.map((n) => n + 10);
  print(newList);

  Map<int, String> mp = {0: 'This', 1: 'is', 2: 'Roudro'};

  var newMp = mp.map((key, value) {
    return MapEntry(key + 10, value);
  });

  print(newMp);

  List<int> nums = [1, 2, 3, 4, 5, 6];
  var oddNums = nums.where((n) => n % 2 != 0);
  print(oddNums);

  var anyList = nums.any((n) => n > 3);

  print(anyList);

  var everyList = nums.every((n) => n > 3);
  print(everyList);

  List<double> bills = [50, 100, 200.9898789];

  double totalbill = double.parse(bills.fold(0.00, (t, c) => t + c).toStringAsFixed(5));
  print(totalbill);
}
