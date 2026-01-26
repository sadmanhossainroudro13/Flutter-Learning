class InsufficientFundException implements Exception {
  String reason;
  InsufficientFundException(this.reason);

  @override
  String toString() {
    return "Wrong Input! Error: $reason";
  }
}

class InvalidAmountException implements Exception {
  String reason;
  InvalidAmountException(this.reason);

  @override
  String toString() {
    return "This amount is not valid: $reason";
  }
}

class ATM {
  int balance = 1000;

  void withdraw(int amount) {
    if (amount <= 0) {
      throw InvalidAmountException("Cant be less than 0");
    } else if (amount > balance) {
      throw InsufficientFundException("Not enough balance");
    }

    balance = balance - amount;
    print("Successfully Withdraw money: $amount. Balance is: $balance");
  }
}

void main() {
  ATM atm = ATM();
  try {
    atm.withdraw(200);

    atm.withdraw(2000);
  } 
  on InsufficientFundException catch(e){
    print("${e.toString()}");
  } 
  on InvalidAmountException catch(e){
    print("${e.toString()}");
  } 
  catch (e) {
    print("Other Error");
  }
}
