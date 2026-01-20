import 'genericExtension.dart';

extension MyListExtension<T> on List<T> {
  List<T> swapFirstLast() {
    if (this.isEmpty) {
      throw Exception("List is Empty");
    } else {
      var temp = this[0];
      this[0] = this[this.length - 1];
      this[this.length - 1] = temp;
    }
    return this;
  }
}

void main() {
  var numbers = [1, 2, 3, 4, 5, 6, 7];
  print(numbers.swapFirstLast());

  var str = ["Roudro", "karim", "Jodu"];
  print(str.swapFirstLast());

  print("Middle item is: ${str.getMiddleitem()}");
}
