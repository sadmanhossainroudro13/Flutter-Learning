class Solution {
  int min(l, r) {
    if (l <= r) {
      return l;
    }
    return r;
  }

  int maxArea(List<int> height) {
    var left = 0;
    var right = height.length - 1;
    var maxArea = 0;

    while (left < right) {
      var area = min(height[left], height[right]) * (right - left);
      if (area > maxArea) {
        maxArea = area;
      }
      if (height[left] < height[right]) {
        left++;
      } else {
        right--;
      }
    }
    return maxArea;
  }
}

void main() {
  List<int> height = [1, 8, 6, 2, 5, 4, 8, 3, 7];
  Solution check = Solution();
  print(check.maxArea(height));
}
