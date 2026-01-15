void main() {
  String? address;
  String finaladdress = address ?? "Dhaka";
  print(finaladdress);
  var answer = square(6);
  var answer2 = square2(4);

  print(answer);
  print(answer2);

  var user = createUser(name: 'Roudro');
  print(user);
}

int square2(int y) => y * y;

int square(int x) {
  return x * x;
}

String createUser({required String name, int? age}) {
  return "Name : $name and Age : ${age ?? 'Not Provided'}";
}
