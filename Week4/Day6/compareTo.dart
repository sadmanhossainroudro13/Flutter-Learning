class Product {
  String name;
  double price;

  Product(this.name, this.price);

  @override
  String toString() {
    return "$name: $price Tk";
  }
}

void main() {
  List<Product> products = [
    Product('Mobile', 20000),
    Product('Laptop', 50000),
    Product('Headphone', 500),
    Product('Mouse', 800),
  ];

  print("Original List...");
  print(products);

  print("\nPrice Low to High");
  products.sort((a, b) => a.price.compareTo(b.price));
  print(products);

  print("\nHigh to Low.....");
  products.sort((a, b) => b.price.compareTo(a.price));
  print(products);

  print("\nSort By name..");
  products.sort((a, b) => a.name.compareTo(b.name));
  print(products);
}
