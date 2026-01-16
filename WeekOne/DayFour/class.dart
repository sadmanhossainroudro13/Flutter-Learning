class Mobile {
  String model;
  int? ram;

  Mobile({required this.model, this.ram});

  void callMethod({String? TemporaryName}) {
    if (TemporaryName != null) {
      print("$TemporaryName is calling");
    } else {
      print("$model is calling");
    }
  }
}

void main() {
  Mobile mobile1 = Mobile(model: 'Iphone 15', ram: 4);
  Mobile mobile2 = Mobile(model: 'RealmeGT');

  mobile1.callMethod();
  mobile2.callMethod();
}
