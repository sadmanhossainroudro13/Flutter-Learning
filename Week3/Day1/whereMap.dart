import 'dart:async';

Stream<int> countStream() async* {
  List values = [1000,2000,3000,5000];
  for (int i in values) {
    yield i;
  }
}

void main() async {
  String str = 'Taka';
  var stream = countStream().where((i) => i >= 3000).map((i) => '$i $str');
  await for (var value in stream) {
    print("Final outpur is: $value");
  }
}
