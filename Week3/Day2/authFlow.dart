import 'dart:async';
import 'dart:io';

void main() {
  final controller = StreamController<String>.broadcast();

  controller.stream.listen((data) {
    print(data);
  });

  void check(String pass) {
    if (pass == "1234") {
      controller.sink.add("Success");
    } else {
      controller.sink.add("Wrong Password");
    }
  }

  print("Enter Password:");
  String? pass = stdin.readLineSync();
  check(pass ?? "");

  controller.close();
}
