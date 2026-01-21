class Queue<T> {
  List<T> _queueList = [];
  List<T> eList = [];

  void enqueue(T item) {
    _queueList.add(item);
  }

  T? dequeue() {
    if (_queueList.isEmpty) {
      return null;
    }
    return _queueList.removeAt(0);
  }

  T? peek() {
    if (_queueList.isEmpty) {
      return null;
    }
    return _queueList.first;
  }
}

void main() {
  Queue<String> page = Queue();

  page.enqueue("Page 1");
  page.enqueue("Page 2");
  page.enqueue("Page 3");
  page.enqueue("Page 4");

  print(page._queueList);
  print(page.dequeue());
  print(page._queueList);
  print(page.peek());

  page.eList.add("value");
  print(page.eList);

  page._queueList.add("dsd");
  print(page._queueList);
}
