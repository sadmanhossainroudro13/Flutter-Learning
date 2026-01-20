class ApiResponse<T> {
  T? data;
  String? error;
  bool loading;

  ApiResponse(this.data, this.error, this.loading);
}

class User {
  String name;
  User(this.name);
}

void main() {
  var user1 = User("Roudro");

  var response = ApiResponse(user1, null, true);
  print(response.data);
  print(response.data?.name);

  var str = ApiResponse("This is a String", "String Error", true);
  print(str.data);

  var number = ApiResponse(10, "This is a Int", false);
  print(number.data);
}
