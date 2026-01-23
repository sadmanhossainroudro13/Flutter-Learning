extension Nullsafety on String? {
  String get orEmpty {
    return this ?? "THis is Empty";
  }
}

extension NumberManu on int? {
  int get orZero {
    return this ?? 0;
  }
}

void main() {
  String? str = "Hi im not empty";
  print(str.orEmpty);

  int? number = 3;
  print(number.orZero);
}
