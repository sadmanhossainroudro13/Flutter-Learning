import 'dart:async';

void main() {
  List<Map<String, dynamic>> user = [
    {'name': 'Rahim', 'price': 700, 'category': 'Shirt'},
    {'name': 'Karim', 'price': 500, 'category': 'Pant'},
    {'name': 'jodu', 'price': 200, 'category': 'Fruit'},
    {'name': 'Modu', 'price': 200, 'category': 'Headphone'},
    {'name': 'kodu', 'price': 200, 'category': 'Fruit'},
  ];

  print("Fruits List is:");
  var fruits = user.where((n) => n['category'] == 'Fruit').toList();

  print(fruits);

  print("All product price: ");

  var totalprice = user.fold(0, (t, c) => t + (c['price'] as int));
  print(totalprice);

  var highestPrice = user.reduce((a, b) {
    return (a['price'] as int) > (b['price'] as int) ? a : b;
  });

  print("highest Price: ${highestPrice['category']} - ${highestPrice['price']}");
}
