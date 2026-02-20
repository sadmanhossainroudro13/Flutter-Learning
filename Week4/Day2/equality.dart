class A {
  A(this.value);
  final int value;
}

class B {
  final int value2;
  const B(this.value2);
}

void main() {
  final a1 = A(1);
  final a2 = A(1);
  //Return false though same value created by same class
  print(a1 == a2);

  const b1 = B(1);
  const b2 = B(1);
  //Return true cause const is used
  print(b1==b2);
}
