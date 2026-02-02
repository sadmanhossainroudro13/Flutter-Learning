Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  try {
    await for (var i in stream) {
      sum += i;
    }
  } catch (e) {
    return -1;
  }
  return sum;
}

Stream<int> countStream(int count) async* {
  for (int i = 1; i <= count; i++) {
    if (i == 10) {
      continue;
    } else {
      yield i;
    }
  }
}

void main() async {
  var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum);
}
