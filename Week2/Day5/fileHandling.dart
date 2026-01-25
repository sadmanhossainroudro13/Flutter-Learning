import 'dart:io';

void main() async {
  File myFile = File('data1.txt');

  print("Writing Data");
  await myFile.writeAsString("Hello! This data is written");
  print("Saved Successfully");

  print("Read File");
  var read = await myFile.readAsString();
  print(read);
}
