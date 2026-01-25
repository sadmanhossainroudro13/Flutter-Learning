List twoSum(List nums, int target) {
  Map<int, int> hashmap = {};

  for (int i = 0; i < nums.length; i++) {
    var find = target - nums[i];
    if (hashmap.containsKey(find)) {
      return [i, hashmap[find]!];
    }
    hashmap[nums[i]] = i;
  }
  return [];
}

void main() {
  var nums = [2, 7, 11, 15];
  int target = 9;

  print(twoSum(nums, target));
}
