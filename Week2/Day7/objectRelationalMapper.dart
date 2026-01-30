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
    if (!file.existsSync()) {
      file.createSync();
      file.writeAsStringSync('[]');
      print("File Created Successfully");
    }
  }

  //Add korete hobe save e jate same id r duplicate na hoy
  void save(Student newStudent) {
    //Reading the file
    String fileInfo = file.readAsStringSync();

    //Decoding the file to List
    List<dynamic> listFile = jsonDecode(fileInfo);

    //Adding the new student info to the List
    listFile.add(newStudent.toJson());

    //Now encoding the file for saving
    String encodeData = jsonEncode(listFile);

    //Saving the info to file
    file.writeAsStringSync(encodeData);
    print("Successfully Added new student....");
  }

  void getAll() {
    //Reading the file
    String fileInfo = file.readAsStringSync();

    //Decode the file Information to map
    List<dynamic> lst = jsonDecode(fileInfo);

    print("---Student Information---");
    for (var map in lst) {
      print("Name: ${map["Name"]}");
      print("ID: ${map["ID"]}");
      print("CGPA: ${map["CGPA"]}");
      print("---------------------");
    }
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
  // Student stu2 = Student(221155641, "Sadman Hossain", 3.5);
  // Student stu3 = Student(221155641, "Sadman Hossain", 3.5);
  FileDatabase<Student> db = FileDatabase();
  //db.save(stu2);
  db.delete(221155641);
  db.getAll();
}
