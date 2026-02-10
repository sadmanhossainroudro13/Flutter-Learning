class BankAccount {
  double _balance;

  BankAccount({required double balance}) : _balance = balance;

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount > _balance) {
      throw Exception("Not enough balance");
    } else {
      _balance -= amount;
    }
  }

  get getBalance => _balance;
}

void main() {
  BankAccount account = BankAccount(balance: 0);

  account.deposit(500);
  account.deposit(5800);

  try {
    account.withdraw(58500);
  } catch (e) {
    print(e);
  }

  print("Balance is: ${account.getBalance}");
}
