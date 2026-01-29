import 'dart:io';

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
  File myfile = File('myfile.txt');

  FileDatabase(){
    if(!myfile.existsSync()){
      myfile.createSync();
      myfile.writeAsStringSync('[]');
      print('File created successfully');
    }
  }
  
  void saveItem(T item) {
    
  }
}

void main() {
  Student stu1 = Student(221155641, "Sadman Hossain", 3.5);
  Student stu2 = Student(221155641, "Sadman Hossain", 3.5);
  Student stu3 = Student(221155641, "Sadman Hossain", 3.5);
  print(stu1.toJson());
}
