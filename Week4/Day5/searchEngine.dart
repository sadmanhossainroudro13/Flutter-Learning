import 'dart:math';

void main() {
  List bigList = List.generate(100000, (index) {
    return "User $index - info no is ${Random().nextInt(10000)}\n";
  });

  print("Data generation is complete....");
  String searchKay = "99";

  //Normal Search
  String normalSearch = "";
  Stopwatch sw1 = Stopwatch()..start();

  for (String item in bigList) {
    if (bigList.contains(searchKay)) {
      normalSearch = normalSearch + item;
    }
  }
  print(normalSearch);
  sw1.stop();
  print(
    "Normal String took time: milisecconds: ${sw1.elapsedMilliseconds}, seconds ${sw1.elapsed}",
  );
}
