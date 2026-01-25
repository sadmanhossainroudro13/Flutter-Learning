import 'dart:io';
import 'dart:convert';

void main() async {
  File myFile = File('thisData.txt');

  Map<String, dynamic> student = {
    "name": "Roudro",
    "id": 101,
    "isPass": true,
    "skills": ["Dart", "Flutter"],
  };

  //Writing the data
  print("Writing Data:.....");
  var dataEncode = jsonEncode(student);
  var toRead = await myFile.writeAsString(dataEncode);
  print("Saved Successfully");

  //Reading the Data
  print("Reading File");
  if (await myFile.exists()) {
    String fileContent = await myFile.readAsString();
    Map<String, dynamic> showData = jsonDecode(fileContent);
    print(showData);
  } else {
    print("File not found");
  }
}
