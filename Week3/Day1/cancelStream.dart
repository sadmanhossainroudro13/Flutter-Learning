import 'dart:async';

Stream<int> countTOTen() async* {
  for (int i = 1; i <= 10; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

void main() async {
  var stream = countTOTen();
  var subscription = stream.listen(null);

  print("Stream is Running");

  subscription.onData((value) {
    print("Counting seconds: $value");
    if (value == 5) {
      print('Subscription cancel');

      subscription.cancel();
    }
  });
}
