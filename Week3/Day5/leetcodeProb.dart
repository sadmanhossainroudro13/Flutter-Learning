void main() {
  List<int> nums = [0, 1, 0, 3, 12];
  var L = 0;
  for (int R = 0; R < nums.length; R++) {
    if (nums[R] != 0) {
      var temp = nums[L];
      nums[L] = nums[R];
      nums[R] = temp;
      L++;
    }
  }
  print(nums);
}
