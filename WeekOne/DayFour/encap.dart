class AC {
  int _temp;

  AC({required int temp}) : _temp = temp;

  set setTemp(int value) {
    if (value < 16 || value > 32) {
      throw Exception(Error);
    }
    _temp = value;
  }

  int get getTemp => _temp;

  void display() {
    print("Temperature is $_temp");
  }
}

void main() {
  AC ac = AC(temp: 24);

  ac.display();

  ac.setTemp = 28;
  ac.display();

  try{
    ac.setTemp = 500;
  }
  catch(error){
    print(error);
  }
}
