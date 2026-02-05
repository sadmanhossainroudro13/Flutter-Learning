import 'dart:async';

void main() async {
  final controller = StreamController<String>();

  controller.sink.add("Hello");
  controller.sink.add("This is Roudro");

  await for (var i in controller.stream) {
    print(i);
  }

  controller.close();
}
