import 'dart:async';

void main() {
  final brodController = StreamController<int>.broadcast();

  brodController.stream.where((data) => data % 2 == 0).listen((data) {
    print('Even Number: $data');
  });

  brodController.stream.where((data) => data % 2 != 0).listen((data) {
    print('Odd Number: $data');
  });

  for (int i = 1; i <= 100; i++) {
    brodController.sink.add(i);
  }

  Future.delayed(Duration(seconds: 2), () {
    brodController.close();
    print("Stream closed safely");
  });
}
