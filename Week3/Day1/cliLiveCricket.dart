import 'dart:async';
import 'dart:math';

void main() async {
  var totalRun = 0;
  Stream.periodic(Duration(seconds: 2), (count) {
        var runs = Random().nextInt(7);
        totalRun += runs;
        return {"Ball : ${count + 1} | Run : $runs"};
      })
      .take(6)
      .listen(
        (data) {
          print(data);
        },

        onDone: () {
          print('Over Ended');
          print('Total run: $totalRun');
        },
      );
}
