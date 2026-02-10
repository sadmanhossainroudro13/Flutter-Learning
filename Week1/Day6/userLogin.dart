Future<String> loginUser(String pass) async {
  await Future.delayed(Duration(seconds: 3));

  if (pass == "1234") {
    print("User Logged in..");
    return "Successfully Loggedd in";
  } else {
    throw Exception("Wrong password! Try again..");
  }
}

void main() async {
  print("user trying to log in..");

  try {
    String result = await loginUser("1234");
    print(result);
  } catch (e) {
    print("Sorry problem occured $e");
  }

  print("All ok App running");
}
