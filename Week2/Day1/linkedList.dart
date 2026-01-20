class Node {
  int node;
  Node? next;
  Node(this.node);
}

void printNodes(Node? head) {
  Node? current = head;
  print("Display all Nodes:");
  while (current != null) {
    print(current.node);
    current = current.next;
  }
}

void countUntil(Node? head) {
  Node? current = head;

  var count = 0;
  while (current != null) {
    current = current.next;
    count++;
  }
  count = count ~/ 2 + 1;
  print("Count is: $count");

  while (current != null) {
    if (current.node == count) {
      print(current.node);
    }
    current = current.next;
  }
}

void lastElement(Node? head) {
  Node? last = head;

  while (last?.next != null) {
    last = last?.next;
  }
  print("last Element is: ${last?.node}");
}

bool hasValue(Node? head, int value) {
  Node? current = head;

  while (current != null) {
    if (current.node == value) {
      return true;
    }
    current = current.next;
  }
  return false;
}

void reverseList(Node? head) {
  Node? current = head;
  Node? previous = null;
  Node? temp = null;
  //null--- 1,2,3,4 -- null
  //prev  curr
  while (current != null) {
    temp = current.next;
    current.next = previous;
    previous = current;
    current = temp;
  }
  head = previous;

  print("Display all reversed Nodes:");
  while (head != null) {
    print(head.node);
    head = head.next;
  }
}

void main() {
  Node a = Node(1);
  Node b = Node(2);
  Node c = Node(3);
  Node d = Node(4);

  a.next = b;
  b.next = c;
  c.next = d;

  // printNodes(a);
  // reverseList(a);
  countUntil(a);
  // lastElement(a);
  // print("Does this value Exists?:${hasValue(a, 10)}");
}
