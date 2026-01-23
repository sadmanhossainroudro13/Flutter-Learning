extension Listmanu<T extends num> on List<T> {
  num sumList() {
    num total = 0;
    for (int i = 0; i < this.length; i++) {
      total = total + this[i];
    }
    return total;
  }
}

void main() {
  List<num> test = [10, 20, 30, 40, 5.55];
  print("Total is : ${test.sumList()}");
}
