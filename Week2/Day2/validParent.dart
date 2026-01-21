void main() {
  String s = "]";
  List<String> stack = [];
  var isError = false;

  for (var i in s.split('')) {
    if (i == '(' || i == '[' || i == '{') {
      stack.add(i);
    } else if (i == ')' || i == ']' || i == '}') {
      if (stack.isEmpty) {
        isError = true;
        break;
      }

      if (i == ']' && stack.last == '[' ||
          i == ')' && stack.last == '(' ||
          i == '}' && stack.last == '{') {
        stack.removeLast();
      }
    }
  }
  if (stack.isEmpty) {
    print(true);
  } else {
    print(false);
  }
}
