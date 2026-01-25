import 'dart:convert';

void main() {
  Map<String, dynamic> student = {
    "name": "Roudro",
    "id": 101,
    "isPass": true,
    "skills": ["Dart", "Flutter"],
  };

  print("Original info:");
  print(student);

  print('After Encode');
  String jsonString = jsonEncode(student);
  print(jsonString);

  Map<String, dynamic> jsonMap = jsonDecode(jsonString);

  print("After Decode: ");
  print(jsonMap);
}
