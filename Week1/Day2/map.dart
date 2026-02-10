void main() {
  Map<String, dynamic> user = {'name': 'Roudro', 'age': 25, 'isStudent': true};

  user['name'] = "Sadman Hossain Roudro";
  user['Location'] = "Rangpur";

  user.forEach((k, v) {
    print('$k : $v');
  });
}
