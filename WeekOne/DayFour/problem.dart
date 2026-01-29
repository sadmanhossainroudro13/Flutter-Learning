class ParkingSystem {
  int big;
  int medium;
  int small;

  ParkingSystem(this.big, this.medium, this.small);

  bool addCar(int carType) {
    if (carType == 1) {
      if (big > 0) {
        big--; 
        return true; 
      } else {
        return false; 
      }
    }
    
    else if (carType == 2) {
      if (medium > 0) {
        medium--;
        return true;
      } else {
        return false;
      }
    }
    
    else if (carType == 3) {
      if (small > 0) {
        small--;
        return true;
      } else {
        return false;
      }
    }
    
    return false; 
  }
}

void main() {
  ParkingSystem myGarage = ParkingSystem(1, 1, 0);

  print("Start Garage Check:");

  bool result1 = myGarage.addCar(1); 
  print("Big Car 1: $result1"); 

  bool result2 = myGarage.addCar(1);
  print("Big Car 2: $result2");

  bool result3 = myGarage.addCar(2);
  print("Medium Car: $result3");

  bool result4 = myGarage.addCar(3);
  print("Small Car: $result4");
}