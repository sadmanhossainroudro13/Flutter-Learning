void main() {
  var nums = [-1, 0, 3, 5, 9, 12];
  var target = 9;

  var l = 0;
  var r = nums.length - 1;
  while (l <= r) {
    var m = (l + r + 1) ~/ 2;
    if (target == nums[m]) {
      print(m);
    } else if (target > nums[m]) {
      l = m + 1;
    } else if (target < nums[m]) {
      r = m - 1;
    }
  }
  print(-1);
}
