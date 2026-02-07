//Image process for Cloud Upload

void main() async {
  int count = 0;
  List<String> photos = List.generate(1000, (i) => "Photos$i.jpg");

  Stream<String> myStream = Stream.fromIterable(photos);

  await for (var data in myStream) {
    await Future.delayed(Duration(milliseconds: 2));
    count++;
    if (count % 100 == 0) {
      double percent = (count / photos.length) * 100;
      print("Progress: ${percent}% ($count fiules done)");
    }
  }
}
