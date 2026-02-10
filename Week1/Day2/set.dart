void main() {
  Set<int> thisSet = {1, 2, 3, 4, 5};
  thisSet.add(6);
  thisSet.remove(2);

  print(thisSet);

  if (thisSet.contains(3)) {
    print("Exists");
  }

  List<int> lst = [1, 2, 3, 4, 5, 6, 3, 4, 3, 2, 2, 5,6989];

  List<int> thatSet = lst.toSet().toList();

  print(thatSet);
}
