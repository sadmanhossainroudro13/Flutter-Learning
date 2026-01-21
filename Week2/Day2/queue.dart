void queueRestaurant(List food, List queue) {
  for (var i in food) {
    queue.add(i);
  }
  var len = queue.length;
  for (int i = 0; i < len; i++) {
    print("Serving ${queue.removeAt(0)}");
  }
}

void conditionCheck(List nums, List queue) {
  for (var i in nums) {
    queue.add(i);
  }
  var len = queue.length;
  for (int i = 0; i < len; i++) {
    if (queue[0] == 30) {
      print("Bad luck found");
      break;
    } else {
      print(queue.removeAt(0));
    }
  }
}

void stackQueue(List queue, List stack) {
  for (var i in queue) {
    stack.add(i);
  }
  queue.clear();
  var len = stack.length;
  for (var i = 0; i < len; i++) {
    queue.add(stack.removeLast());
  }
  print(queue);
}

void main() {
  List<String> food = ["Burger", "Pizza", "Coke"];
  List<String> queue = [];
  //queueRestaurant(food, queue);

  List<int> nums = [10, 20, 30, 40, 50];
  List<int> queue2 = [];
  //conditionCheck(nums, queue2);

  List<int> queue3 = [1, 2, 3, 4, 5];
  List<int> stack3 = [];
  stackQueue(queue3, stack3);
}
