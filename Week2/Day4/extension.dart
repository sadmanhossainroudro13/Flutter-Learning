//Used to make extention for Data Type like String,Int,List.

extension MathSkills on int {
  int makeDouble() {
    return this * 2;
  }
  String toTaka() {
    return "${this}TK";
  }
}

extension StringManupulation on String {
  String toTaka() {
    return "${this}TK";
  }
}

void main() {
  int taka = 100;
  print(taka.makeDouble());
  print(taka.toTaka());

  String tk = "300";
  print(tk.toTaka());
}
