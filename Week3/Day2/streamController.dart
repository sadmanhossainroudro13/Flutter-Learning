import 'dart:async';

void main() {
  final controller = StreamController<String>();

  controller.stream.listen(
    (data) {
      print("Successful Data: $data");
    },
    onError: (err) {
      print("Error: $err");
    },
    onDone: () {
      print("Service closed");
    },
  );

  void check(String message) {
    if (message.length < 5) {
      controller.sink.addError("Must be greater than 5 character");
    } else {
      controller.sink.add(message);
    }
  }

  check("Hello this is a new message");
  check("Hell");
}
