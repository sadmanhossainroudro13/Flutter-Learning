abstract class PaymentGateway {
  void pay(double amount);
}

class Bkash implements PaymentGateway {
  @override
  void pay(double amount) {
    print("Paid $amount by Bkash");
  }
}

class Nagad implements PaymentGateway {
  @override
  void pay(double amount) {
    print("Paid $amount by Nagad");
  }
}

class Shop {
  PaymentGateway gateway;
  Shop(this.gateway);
  void buyProduct(double price) {
    gateway.pay(price);
  }
}

void main() {
  Shop myShop = Shop(Bkash());
  myShop.buyProduct(1000.67);

  Shop shopByNagad = Shop(Nagad());
  shopByNagad.buyProduct(566.876);
}
