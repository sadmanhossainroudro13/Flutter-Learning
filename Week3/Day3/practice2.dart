void main() {
  var nums = [5,2,3,1];
  for (int j = 0; j < nums.length - 1; j++) {
    for (var i = 0; i < nums.length - 1; i++) {
      var temp;
      if (nums[i] > nums[i + 1]) {
        temp = nums[i + 1];
        nums[i + 1] = nums[i];
        nums[i] = temp;
      }
      print(nums);
    }
  }
  print(nums[nums.length - 1]);
}
