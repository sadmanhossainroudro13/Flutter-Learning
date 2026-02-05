import 'dart:async';

void main() async {
  var dataFilter =
      StreamTransformer<
        Map<String, dynamic>,
        Map<String, dynamic>
      >.fromHandlers(
        handleData: (map, EventSink<Map<String, dynamic>> sink) {
          var phone = map["Phone"];
          String maskedPhone = phone.replaceRange(3, 7, "****");
          map["Phone"] = maskedPhone;
          sink.add(map);
        },
      );

  Stream<Map<String, dynamic>> data() async* {
    Map<String, dynamic> map = {
      "Name": "Roudro",
      "Age": 25,
      "Phone": '01611111111',
    };
    print("Data is Yielding.....");
    await Future.delayed(Duration(seconds: 1));
    yield map;
  }

  var streamTrans = data().transform(dataFilter);
  await for (var i in streamTrans) {
    print(i);
  }
}
