import 'dart:async';
import 'dart:math';

void main() {
  final controller = StreamController<int>.broadcast();

  controller.stream
  .map((data) => (data * 9/5) + 32)
  .listen((data) {
    print('Current Temperature: $data^ Fahrenheit');
  });

  controller.stream
  .where((data)=>data>40)

  .map((data) => (data * 9/5) + 32)
  
  .listen((data) {
    print('🚨 ALERT: High Temperature Detected! ($data^ Fahrenheit)');
  });


  controller.stream
  .where((data)=> 25 <= data && data <= 40)
  .map((data) => (data * 9/5) + 32)
  
  .listen((data) {
    print('Comfort Zone: ($data^ Fahrenheit)');
  });
  

  for (int i = 0; i < 10; i++) {
    var random = 20 + Random().nextInt(31);
    controller.sink.add(random);
  }
}
