void main() {
  var nums = [1, 1, 2, 2];
  var n = 2;
  var ans = [];

  for (int i = 0; i < n; i++) {
    ans.add(nums[i]);
    ans.add(nums[i + n]);
  }

  print(ans);
}
