mixin CanFly {
  void fly(String name) {
    print("$name Can Fly.");
  }
}

mixin CanSwim {
  void swim(String name) {
    print("$name Can Swim.");
  }
}

mixin CanFight {
  void fight(String name) {
    print("$name Can Fight.");
  }
}

class Superman with CanFight, CanFly {}

class Aquaman with CanFight, CanSwim {}

void main() {
  Superman superman = Superman();
  superman.fight('Superman');
  superman.fly('Superman');

  Aquaman aquaman = Aquaman();
  aquaman.fight('Aquaman');
  aquaman.swim('Aquaman');
}
