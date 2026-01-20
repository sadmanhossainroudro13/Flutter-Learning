class GenericBox<T> {
  T value;
  GenericBox(this.value);
}

T showData<T>(T info) {
  print("Info is: \"$info\"");
  return info;
}

class MathBox<T extends num> {
  T add(T a, T b) {
    return (a + b) as T;
  }
}

T genericMultiply<T extends num>(T a, T b) {
  return (a * b) as T;
}

void main() {
  var intValue = GenericBox<int>(10);
  print(intValue.value);

  var StringValue = GenericBox<String>("This is a String");
  print(StringValue.value);

  var doubleValue = GenericBox<double>(5.5);
  print(doubleValue.value);

  showData<int>(10);
  showData<String>("This is a String");

  var calculate = MathBox<int>();
  print(calculate.add(40, 50).runtimeType);

  print(genericMultiply(20, 40));
}
