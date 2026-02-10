void main() {
  var s = ["h", "e", "l", "l", "o"];
var left = 0;
  var right = s.length - 1;
  void reverse(List s, var left, var right) {
    if (left < right) {
      var temp = s[left];
      s[left] = s[right];
      s[right] = temp;
      return reverse(s, left + 1, right - 1);
    }
  }

  reverse(s, left, right);
  print(s);
}
