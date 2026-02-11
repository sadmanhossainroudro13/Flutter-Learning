void main() {
  String s = "loveleetcode";
  Map<String, int> map = {};
  for (int i = 0; i < s.length; i++) {
    if (map.containsKey(s[i])) {
      map[s[i]] = map[s[i]]! + 1;
    } else {
      map[s[i]] = 1;
    }
  }
  print(map);
  bool flag = false;
  for (int i = 0; i < s.length; i++) {
    if (map[s[i]] == 1) {
      print(i);
    }
  }
  print(-1);
}
