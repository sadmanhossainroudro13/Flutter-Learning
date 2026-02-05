import 'dart:async';

void main() async {
  var moneyChanger = StreamTransformer<int, String>.fromHandlers(
    handleData: (int taka, EventSink<String> sink) {
      var coins = taka * 1;
      var result = "$coins, 1 coins can made from $taka TK";
      sink.add(result);
    },
  );

  Stream<int> wallet() async* {
    yield 10;
    Future.delayed(Duration(seconds: 1));
    yield 50;
    Future.delayed(Duration(seconds: 1));
    yield 100;
    Future.delayed(Duration(seconds: 1));
  }

  var streamTran = wallet().transform(moneyChanger);

  await for (var i in streamTran) {
    print(i);
  }
}
