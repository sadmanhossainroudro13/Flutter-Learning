import 'dart:async';

//Making a shoping cart and add 5% vat on products greater than 500

void main() async {
  print("Creting Bills...");
  Map<String, int> shoppingCart = {
    'Mobile': 20000,
    'Back Cover': 150, //Less than 500
    'Headphone': 3000,
    'Charger': 800,
    'Laptop': 50000,
  };

  Stream<MapEntry<String, int>> myProduct = Stream.fromIterable(
    shoppingCart.entries,
  );

  await myProduct
      .where((data) => data.value > 500)
      .map((data) {
        double withVat = data.value + (data.value * 0.05);
        return "${data.key} product price with vat is: ${withVat}";
      })
      .take(3)
      .forEach((finalBill) async {
        await Future.delayed(Duration(seconds: 2));
        print(finalBill);
      });
}
