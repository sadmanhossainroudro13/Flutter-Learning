class Animal {
  void eat() {
    print("Eating Food.");
  }
}

class Dog extends Animal {
  void bark() {
    print("Ghew Ghew");
  }
}

void main() {
  Dog dog1 = Dog();
  dog1.eat();
  dog1.bark();
}
