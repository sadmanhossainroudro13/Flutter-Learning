class Stack<T> {
  final List<T> _list = [];

  void push(T item) {
    _list.add(item);
  }

  T? pop() {
    if (_list.isEmpty) {
      return null;
    }
    return _list.removeLast();
  }

  T? peek() {
    if (_list.isEmpty) {
      return null;
    }
    return _list.last;
  }
}

void main() {
  Stack<String> page = Stack();

  page.push("Page 1");
  page.push("Page 2");
  page.push("Page 3");

  page.pop();
  print(page.peek());
  print(page._list);
}
