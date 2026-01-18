void main() {
  var n = 6;
  var a = 1;
  var b = 2;
  var temp;

  if (n == 1) {
    print("output: 1");
  } else if (n == 2) {
    print("output: 2");
  }
  for (int i = 0; i < n - 2; i++) {
    temp = a + b;
    a = b;
    b = temp;
  }

  print(temp);
}
