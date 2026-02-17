class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> map = {};
    for (String text in strs) {
      //Sorting the component in List
      List<String> c = text.split("");
      c.sort();
      String key = c.join(""); //aet

      if (map.containsKey(key)) {
        map[key]!.add(text); //aet: eat
      } else {
        map[key] = [text];
      }
    }
    return map.values.toList();
  }
}

void main() {
  Solution s1 = Solution();
  Solution s2 = Solution();
  Solution s3 = Solution();

  List<String> str1 = ["eat", "tea", "tan", "ate", "nat", "bat"];
  print(s1.groupAnagrams(str1));
  //Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

  List<String> str2 = [""];
  print(s2.groupAnagrams(str2));
  //Output: [[""]]

  List<String> str3 = ["a"];
  print(s3.groupAnagrams(str3));
  //Output: [["a"]
}
