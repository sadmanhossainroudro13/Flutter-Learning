mixin inputValidationMixin {
  bool isValidMail(String email) {
    return email.contains('@');
  }

  bool isValidPassword(String pass) {
    return pass.length >= 6;
  }
}

class LoginPage with inputValidationMixin {
  void login(String email) {
    if (isValidMail(email)) {
      print("Logging in....");
    } else {
      print("Invalid email");
    }
  }
}

void main() {
  LoginPage log = LoginPage();
  log.login('hergmail.com');
}
