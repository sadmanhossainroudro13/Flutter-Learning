class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    Map<String, int> map = {};
    for (int i = 0; i < magazine.length; i++) {
      if (map.containsKey(magazine[i])) {
        map[magazine[i]] = map[magazine[i]]! + 1;
      } else {
        map[magazine[i]] = 1;
      }
    }
    print(map);
    for (int i = 0; i < ransomNote.length; i++) {
      if (map.containsKey(ransomNote[i])) {
        map[ransomNote[i]] = map[ransomNote[i]]! - 1;
        if (map[ransomNote[i]]! < 0) {
          return false;
        }
      } else {
        return false;
      }
    }
    return true;
  }
}

void main() {
  Solution sol1 = Solution();
  print(sol1.canConstruct("a", "b"));
  Solution sol2 = Solution();
  print(sol2.canConstruct("aa", "ab"));
  Solution sol3 = Solution();
  print(sol3.canConstruct("aa", "aab"));
}
