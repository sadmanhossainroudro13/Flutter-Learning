void stringReverse(String str, List stack) {
  for (var i in str.split('')) {
    stack.add(i);
  }
  var len = stack.length;
  for (int i = 0; i < len; i++) {
    print(stack.removeLast());
  }
}

void conditionalPop(List<int> nums, List<int> stack) {
  for (var i = 0; i < nums.length; i++) {
    stack.add(nums[i]);
  }
  print(stack);
  while (stack.isNotEmpty && stack.last > 20) {
    print("Popped: ${stack.removeLast()}");
  }
}

void main() {
  //Put Word in Stack and then Reverse it
  String str = "HELLO";
  List<String> stack = [];
  //stringReverse(str, stack);

  List<int> nums = [10, 5, 20, 15, 30];
  List<int> stack2 = [];
  conditionalPop(nums, stack2);

  List stack3 = [];
  if (stack3.isEmpty) {
    print("Stack is Empty");
  } else {
    print(stack3);
  }
}
