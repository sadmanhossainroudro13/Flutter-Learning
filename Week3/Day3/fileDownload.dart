import 'dart:async';

void main() async {
  Stream<String> downloadFile(double size) async* {
    double completed = 0;
    print("Download Started");

    for (int i = 10; i <= 100; i += 10) {
      completed = completed + size * 10 / 100;
      await Future.delayed(Duration(seconds: 1));
      yield "Downloading File: $i% ($completed MB)";
    }
    await Future.delayed(Duration(seconds: 1));
    yield "File Downloaded Successfully.";
  }

  await for (var i in downloadFile(256)) {
    print(i);
  }
}
