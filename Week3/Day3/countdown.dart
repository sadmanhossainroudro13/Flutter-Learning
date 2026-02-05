import 'dart:async';

void main() async {
  Stream<String> ghostCount(int n) async* {
    for (int i = n; i > 0; i--) {
      await Future.delayed(Duration(seconds: 1));
      yield "Countdown: $i";
    }
    await Future.delayed(Duration(seconds: 1));
    yield "Boom!! Ghost is Here";
  }

  print("Countdown Start now!!");
  await for (String i in ghostCount(5)) {
    print(i);
  }
}
