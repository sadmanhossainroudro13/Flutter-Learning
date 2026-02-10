class Mobile {
  String model;
  int warranty;
  int ram;

  Mobile({required this.model, required this.warranty, required this.ram});

  void details() {
    print(
      "$model is calling and warranty is $warranty years and ram is $ram GB");
  }

  Mobile.usedDetails(this.model) : warranty = 0, ram = 2 {
    print(
      "Refurbished phone model is $model and warranty: $warranty and ram is $ram GB");
  }
}

void main() {
  Mobile newMobile = Mobile(model: 'Iphone 13', warranty: 2, ram: 4);

  newMobile.details();

  Mobile oldMobile = Mobile.usedDetails('Samsunng s21');
  print(oldMobile);
}
