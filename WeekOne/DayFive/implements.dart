class Listener {
  void Listen() {
    print("Listening....");
  }
}

class Student implements Listener {
  void Listen() {
    print("Student is Listening");
  }
}

void main() {
  var listener = Listener();
  listener.Listen();

  var stu = Student();
  stu.Listen();
}
