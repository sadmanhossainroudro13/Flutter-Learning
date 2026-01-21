class Browserhistory<T> {
  List<T> backStack = [];
  List<T> forwardStack = [];

  void back() {
    if (backStack.isEmpty) {
      throw Exception("Visit Pages..");
    }
    while()
    forwardStack.add(backStack.removeLast());

  }

  void forward(T page) {
    backStack.add(page);
  }
}

void main() {
  Browserhistory<String> page = Browserhistory();
}
