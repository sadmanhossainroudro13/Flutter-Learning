class Solution {
  double findMaxAverage(List<int> nums, int k) {
    double max = 0;
    double sum = 0;
    for (int i = 0; i < k; i++) {
      sum += nums[i];
    }

    max = sum / 4;

    for (int i = k; i < nums.length; i++) {
      sum = sum + nums[i] - nums[i - k];

      if (sum / 4 > max) {
        max = sum / 4;
      }
    }
    return max;
  }
}

void main() {
  List<int> nums = [1, 12, -5, -6, 50, 3];
  int k = 4;
  Solution s = Solution();
  s.findMaxAverage(nums, k);
}
