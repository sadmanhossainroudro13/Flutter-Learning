import 'dart:async';

void main() {
  Future<String> getUserName() async {
    await Future.delayed(Duration(seconds: 1));
    return "Roudro (Admin)";
  }

  Stream.fromFuture(getUserName()).listen((data) {
    print('Welcome User: $data');
  },
  onDone: (){
    print("Stream Closed");
  });

}
