void main() {
  String forStore = "";
  for (int i = 1; i <= 5; i++) {
    forStore = forStore + i.toString();
  }
  print(forStore);

  void countdown(int n){
    if (n == 0) {
      print(n);
      return;
    }
    String recurStore = '';
    return countdown(n - 1);
  }
  countdown(10);
}
