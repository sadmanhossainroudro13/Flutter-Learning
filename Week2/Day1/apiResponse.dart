class ApiResponse<T> {
  T? data;
  String? error;
  bool loading;

  ApiResponse(this.data, this.error, this.loading);
}

void main() {

  

  var str = ApiResponse("This is a String", "String Error", true);
  print(str.data);

  var number = ApiResponse(10, "This is a Int", false);
  print(number.data);
}
