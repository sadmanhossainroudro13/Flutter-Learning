abstract class Paymentgateway {
  String name;

  Paymentgateway(this.name);
  void pay(double amount);
}

class Bkash extends Paymentgateway {
  Bkash() : super("Bkash");
  @override
  void pay(double amount) {
    print("Success. Pay taka $amount by $name");
    print("With Charge: ${amount * 0.018}");
  }
}

class Nagad extends Paymentgateway {
  Nagad() : super("Nagad");
  @override
  void pay(double amount) {
    print("Success. Pay taka $amount by $name");
    print("With Charge: ${amount+amount * 0.018}");
  }
}

void main() {
  List<Paymentgateway> myGateway = [Bkash(), Nagad()];

  //Payment By Bkash
  myGateway[0].pay(1000);

  //payment by Nagad
  myGateway[1].pay(2000);
}
