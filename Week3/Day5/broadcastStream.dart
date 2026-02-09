import 'dart:async';
import 'dart:math';

void main() async {
  Stream<int> ballByBall = Stream.periodic(Duration(seconds: 1), (ballCount) {
    return Random().nextInt(7);
  }).take(18);

  Stream<int> liveBroadcast = ballByBall.asBroadcastStream();

  int runSub1 = 0;
  int runSub2 = 0;

  StreamSubscription sub1 = liveBroadcast.listen((run) {
    runSub1 += run;
    print("📺 TV Viewer got update: $run runs (Total: $runSub1)");
  });

  StreamSubscription sub2 = liveBroadcast.listen((run) {
    runSub2 += run;
    print("📱 App User got  update: $run runs (Total: $runSub1)");
  });

  Future.delayed(Duration(seconds: 8), () async {
    print("10 seconds is up. subscription cancel for Sub2");
    sub2.cancel();
  });
}
