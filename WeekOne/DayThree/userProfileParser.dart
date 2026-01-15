class User {
  String name;
  String? address;

  User({required this.name, this.address});

  void showProfile() {
    String addressDisplay = address ?? 'Dhaka';
    print("Name is $name and Address is $addressDisplay");
  }
}

void main() {
  User user1 = User(name: 'Roudro', address: 'Rangpur');
  User user2 = User(name: 'Suchi');

  user1.showProfile();
  user2.showProfile();
}
