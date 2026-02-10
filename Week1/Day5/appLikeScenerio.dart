abstract class CustomButton {
  double height;
  double width;

  String label;
  String color;

  CustomButton({required this.label, required this.color,this.height = 50.00, this.width = 80.00});

  void display() {
    print(
      "This is the properties of CustomButton. Height: $height , Width: $width, color: $color",
    );
  }

  void onPressed();
}

class LoginButton extends CustomButton {
  LoginButton() : super(color: "Red", label: "Login", height: 90.00);
  @override
  void onPressed() {
    print("Login Button is pressed..Color: $color..height: $height, width: $width");
  }
}

class SignButton extends CustomButton {
  SignButton() : super(color: "Blue", label: "Sign Up");
  @override
  void onPressed() {
    print("This is a Sign Up Button and Color is $color");
  }
}

void main() {
  var SignUp = SignButton();
  var login = LoginButton();
  
  login.onPressed();
}
