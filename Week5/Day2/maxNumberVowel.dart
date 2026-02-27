class Solution {
  void maxVowels(String s, int k) {
    Set<String> vowels = {'a', 'e', 'i', 'o', 'u'};
    int count = 0;
    int maxCount = 0;
    for (int i = 0; i < k; i++) {
      if (vowels.contains(s[i])) {
        count++;
      }
    }
    maxCount = count;
    for (int i = k; i < s.length; i++) {
      if (vowels.contains(s[i])) {
        count++;
      } 
      if (vowels.contains(s[i - k])) {
        count--;
      }

      if (maxCount < count) {
        maxCount = count;
      }
    }
    print(maxCount);
  }
}

void main() {
  String s = "leetcode";
  int k = 3;
  Solution s1 = Solution();
  s1.maxVowels(s, k);
}
