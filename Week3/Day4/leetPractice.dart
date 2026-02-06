void main() {
  var s = ["h", "e", "l", "l", "o"];
  var left = 0;
  var right = s.length - 1;
  var mid = (right - left) ~/ 2;
  while (left <= mid) {
    var temp = s[left];
    s[left] = s[right];
    s[right] = temp;
    left += 1;
    right -= 1;
  }

  print(s);
}
