void main() {
  List<String> fruits = [
    'apple',
    'banana',
    'apple',
    'orange',
    'banana',
    'apple',
  ];

  Map<String, int> map = {};

  for (int i = 0; i < fruits.length; i++) {
    if (map.containsKey(fruits[i])) {
      map[fruits[i]] = map[fruits[i]]! + 1;
    } else {
      map[fruits[i]] = 1;
    }
  }
  print(map);
}
