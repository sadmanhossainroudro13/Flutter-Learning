import 'dart:async';

void main() async {
  List<String> music = List.generate(10, (i) => "music$i.mp3");

  Stream<String> musicStream = Stream.periodic(Duration(seconds: 3), (index) {
    return music[index];
  }).take(music.length);

  print("Music Player Starting...");

  Stream<String> broadcastMusic = musicStream.asBroadcastStream();

  StreamSubscription sub1 = broadcastMusic.listen((data) {
    print("Sub 1 is listening music: $data");
  });

  StreamSubscription sub2 = broadcastMusic.listen((data) {
    print("Sub 2 is listening music: $data");
  });

  StreamSubscription sub3 = broadcastMusic.listen((data) {
    print("Sub 3 is listening music: $data");
  });

  Future.delayed(Duration(seconds: 10), () async {
    print("10 second is up..Subscription 2 is cancelled");
    sub2.cancel();
  });
}
