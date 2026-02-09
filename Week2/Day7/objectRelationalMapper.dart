import 'dart:io';
import 'dart:convert';

class Student {
  int id;
  String name;
  double cgpa;

  Student(this.id, this.name, this.cgpa);

  Map<String, dynamic> toJson() {
    return {'ID': id, 'Name': name, 'CGPA': cgpa};
  }
}

class FileDatabase<T> {
  String filename;
  late File file;

  FileDatabase(this.filename) {
    file = File(filename);

    if (!file.existsSync()) {
      file.createSync();
      file.writeAsStringSync('[]');
      print("File Created Successfully");
    }
  }

  //Add korete hobe save e jate same id r duplicate na hoy
  void save(T item) {
    //Reading the file
    String fileInfo = file.readAsStringSync();

    if (fileInfo.isEmpty) fileInfo = '[]';

    //Decoding the file to List
    List<dynamic> listFile = jsonDecode(fileInfo);

    var itemjson = (item as dynamic).toJson();


    bool isDuplicate = listFile.any(
      (element) => element['ID'] == itemjson['ID'],
    );

    if (isDuplicate) {
      print("Error!! ID: ${itemjson['ID']} already exists");
    } else {
      listFile.add(itemjson);
      file.writeAsString(jsonEncode(listFile));
      print("Added successfully to $filename");
    }
  }

  List<dynamic> getAll() {
    //Reading the file
    String fileInfo = file.readAsStringSync();

    return jsonDecode(fileInfo);
  }

  void delete(int id) {
    String fileInfo = file.readAsStringSync();
    List<dynamic> lst = jsonDecode(fileInfo);

    bool exists = lst.any((map) => map["ID"] == id);

    if (!exists) {
      print("Error: ID $id is not found");
      return;
    }

    lst.removeWhere((map) => map["ID"] == id);

    String encodeData = jsonEncode(lst);
    file.writeAsStringSync(encodeData);
    print("Deleted Successfully");
  }
}

void main() {
  Student stu1 = Student(221155641, "Sadman Hossain", 3.5);
  Student stu2 = Student(221155549, "Forhadul Islam", 3.3);
  
  FileDatabase<Student> db = FileDatabase('student.json');
  
  db.save(stu1);
  db.save(stu2);

  List<dynamic> data = db.getAll();
  for (var map in data) {
    print(map);
  }
}
