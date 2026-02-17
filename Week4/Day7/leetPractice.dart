class ParkingSystem {
  int big;
  int medium;
  int small;

  ParkingSystem(this.big, this.medium, this.small);

  bool addCar(int input) {
    if (input == 1 && big > 0) {
      big--;
      return true;
    } else if (input == 2 && medium > 0) {
      medium--;
      return true;
    } else if (input == 3 && small > 0) {
      small--;
      return true;
    } else {
      return false;
    }
  }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * ParkingSystem obj = ParkingSystem(big, medium, small);
 * bool param1 = obj.addCar(carType);
 */
