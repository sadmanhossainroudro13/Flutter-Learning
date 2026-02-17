abstract class Vehicle {
  void path();
}

class Car implements Vehicle {
  @override
  void path() {
    print("Car run on Road");
  }
}

class Boat implements Vehicle {
  @override
  void path() {
    print("Boat run on Water");
  }
}

void main() {
  var car = Car();
  car.path();

  var boat = Boat();
  boat.path();
}
