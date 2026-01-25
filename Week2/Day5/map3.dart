void main() {
  Map<String, int> map = {'Pen': 10, 'Book': 500, 'Paper': 5, 'Bag': 1200};

  var keys = map.keys.toList();

  for (var i in keys) {
    var value = map[i]!;
    if (value > 1000) {
      map.remove(i);
    } else {
      map[i] = value + 10;
    }
  }
  print(map);
}
