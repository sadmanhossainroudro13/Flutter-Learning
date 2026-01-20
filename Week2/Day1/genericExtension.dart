extension ListMiddle<T> on List<T> {
  T getMiddleitem() {
    if (this.isEmpty) {
      throw Exception("List is Empty");
    } else {
      return this[this.length ~/ 2];
    }
  }
}

void main() {
  var numbers = [10, 20, 30, 40, 50, 60, 70];

  print(numbers.getMiddleitem());

  var str = ["Rahim", "karim", "Roudro"];
  print(str.getMiddleitem());
}
