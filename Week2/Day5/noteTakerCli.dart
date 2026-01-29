import 'dart:io';
import 'dart:convert';
void main() async {
  print("Enter File Content:");
  String? readFile = stdin.readLineSync();
  String dataEncode = jsonEncode(readFile);

  File myFile = File("inputFile.txt");

  await myFile.writeAsString(dataEncode);
  print("Data Saved Successfully");

  print("Reading File");
  if (await myFile.exists()) {
    String fileContent = await myFile.readAsString();
    String showData = jsonDecode(fileContent);
    print(showData);
  } else {
    print("File not found");
  }
}
