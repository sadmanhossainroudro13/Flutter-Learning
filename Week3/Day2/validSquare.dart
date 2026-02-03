bool answer(int number) {
  var low = 1;
  var high = number / 2;
  for (int i = 1; i <= high; i++) {
    var mid = low + (high - low) ~/ 2;
    var sqrNum = mid * mid;
    if (sqrNum == number) {
      return true;
    } else if (sqrNum <= number) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return false;
}

void main() {
  var number = 14;
  print(answer(number));
}


