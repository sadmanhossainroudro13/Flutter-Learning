class Student {
  String name;
  int id;
  double marks;

  Student(this.name, this.id, this.marks);

  void display() {
    print("Student $id details");
    print("Name: $name");
    print("ID: $id");
    print("Marks: $marks");
    print("");
  }
}

void main() {
  Student stu1 = Student('Rahim', 1, 90);
  Student stu2 = Student('Karim', 2, 48);
  Student stu3 = Student('Roudro', 3, 95);
  Student stu4 = Student('Jodu', 4, 80);
  Student stu5 = Student('Kodu', 5, 78);

  List<Student> details = [stu1, stu2, stu3, stu4, stu5];

  var goodStudents = details.where((data) => data.marks >= 80);

  print("Only Good Students");
  for (var i in goodStudents) {
    i.display();
  }
}
