import 'dart:async';

void main() async {
  var controller = StreamController<int>.broadcast();

  controller.stream.listen((data) {
    print("A got: $data");
  });

  controller.stream.listen((data) {
    print("B got: $data");
  });

  controller.add(10);
  controller.add(15);

  controller.close();
}
