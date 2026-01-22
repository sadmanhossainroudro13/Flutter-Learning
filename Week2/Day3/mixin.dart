class Employee {
  void work() {
    print("Employee works...");
  }
}

mixin Coder {
  void writeCode() {
    print("can write code..");
  }
}

mixin Singer {
  void singSong() {
    print("can sing song..");
  }
}

class SoftwareEngineer extends Employee with Coder {}

class Musician extends Employee with Singer {}

class Roudro extends Employee with Coder, Singer {}

void main() {
  SoftwareEngineer s1 = SoftwareEngineer();
  s1.writeCode();
  s1.work();

  Musician musician = Musician();
  musician.work();
  musician.singSong();

  Roudro roudro = Roudro();
  roudro.work();
  roudro.writeCode();
  roudro.singSong();
}
