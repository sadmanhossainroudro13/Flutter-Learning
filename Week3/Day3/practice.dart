void main() {
  var nums = [2, 2, 1, 1, 1, 2, 2];
  //Output= 2
  var maxValue = 0;
  var majorityElement = nums[0];
  Map<int, int> map = {};
  for (var i = 0; i < nums.length; i++) {
    if (!map.containsKey(nums[i])) {
      map[nums[i]] = 1;
    } else {
      map[nums[i]] = map[nums[i]]! + 1;
    }

    if (maxValue <= map[nums[i]]!) {
      maxValue = map[nums[i]]!;
      majorityElement = nums[i];
    }
  }

  print(map);
  print(maxValue);
  print(majorityElement);
}
