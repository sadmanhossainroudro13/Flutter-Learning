class Solution {
  int lengthOfLastWord(String s) {
    String str = '';
    for (int i = s.length - 1; i >= 0; i--) {
      if (s[i] != " ") {
        str = str + s[i];
      } else {
        if (str.isNotEmpty) {
          return str.length;
        }
      }
    }
    return str.length;
  }
}

void main() {
  //String s = "Hello World";
  String s = "   fly me   to   the moon  ";

  Solution sol = Solution();
  print(sol.lengthOfLastWord(s));
  //sol.lengthOfLastWord(s);
}
