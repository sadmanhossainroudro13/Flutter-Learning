import 'dart:math';

void main() {
  List bigList = List.generate(500000, (index) {
    return "User $index - info no is ${Random().nextInt(10000)}\n";
  });

  print("Data generation is complete....");
  String searchKey = "99";
  int count = 0;

  //Normal Search
  String normalSearch = "";
  Stopwatch sw1 = Stopwatch()..start();

  print("Search key is: $searchKey");

  for (String item in bigList) {
    if (item.contains(searchKey)) {
      normalSearch = normalSearch + item;
      //print("Found and added: $item");
      count++;
    }
  }
  sw1.stop();
  print(
    "Normal String took time: milisecconds: ${sw1.elapsedMilliseconds}, seconds ${sw1.elapsed} and total found is $count",
  );

  //Now with String buffer
  StringBuffer sb = StringBuffer();
  Stopwatch sw2 = Stopwatch()..start();
  count = 0;
  print("Search key is: $searchKey");

  for (String item in bigList) {
    if (item.contains(searchKey)) {
      sb.write(item);
      //print("Found and added: $item");
      count++;
    }
  }
  sw2.stop();
  print(
    "StringBuffer String took time: milisecconds: ${sw2.elapsedMilliseconds}, seconds ${sw2.elapsed} and total found is $count",
  );
}
