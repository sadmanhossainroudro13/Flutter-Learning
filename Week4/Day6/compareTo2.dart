class Student {
  String name;
  double cgpa;

  Student(this.name, this.cgpa);

  @override
  String toString() {
    return "$name: $cgpa";
  }
}

void main() {
  List<Student> stu = [
    Student('Roudro', 3.50),
    Student('Amin', 3.50),
    Student('Nasima', 3.80),
    Student('Shahidul', 3.50),
    Student('Suchi', 3.50),
    Student('Amina', 3.40),
  ];

  print("Normal list");
  print(stu);

  print("\nNow sorting first sorting by cgpa then 2nd priority is name");
  stu.sort((a, b) {
    //Result is 0 means cgpa is same
    if (a.cgpa == b.cgpa) {
      return a.name.compareTo(b.name);
    }
    //sorting by cgpa high to low
    return b.cgpa.compareTo(a.cgpa);
  });
  //Greater or equal 3.50..
  print(stu.where((data)=>data.cgpa>=3.50));
}
