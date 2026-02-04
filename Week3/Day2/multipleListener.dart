import 'dart:async';

void main() {
  final broadcastController =
      StreamController<Map<String, dynamic>>.broadcast();

  broadcastController.stream.where((data) => data['userID'] == 'User1').listen((
    data,
  ) {
    print('User 1 gets: ${data['msg']}');
  });

  broadcastController.stream.where((data) => data['userID'] == 'User2').listen((
    data,
  ) {
    print('User 2 gets: ${data['msg']}');
  });

  broadcastController.sink.add({'userID': 'User1', 'msg': "This is user 1"});
  broadcastController.sink.add({'userID': 'User2', 'msg': "This is user 2"});
}
