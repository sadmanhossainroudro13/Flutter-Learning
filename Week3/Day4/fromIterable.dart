import 'dart:async';
Future<void> uploadToServer(String fileName) async {
  print('Uploading $fileName......');
  await Future.delayed(Duration(seconds: 3));
  print("File uploaded successfully");
}

void main() async {
  List<String> photos = ['pic1.png', 'pic1.png', 'pic1.png'];

  Stream.fromIterable(photos).listen(
    (photo) async{
      
      await uploadToServer(photo);
    },
    onDone: () {
      print("All photo uploaded successfully");
    },
  );
}
