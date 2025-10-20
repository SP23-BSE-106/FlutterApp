class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  set deposit(double money) {
    if (money >= 100) {
      _balance += money;
      print("Deposited $money");
    } else {
      print("Deposit must be >= 100");
    }
  }

  void withdraw(double amt) {
    if (amt <= _balance) {
      _balance -= amt;
      print("Withdrawn $amt");
    } else {
      print("Not enough balance");
    }
  }
}

void main() {
  BankAccount b = BankAccount();
  b.deposit = 50;   // reject
  b.deposit = 500;  // ok
  b.withdraw(200);  // ok
  b.withdraw(400);  // reject
  print("Balance: ${b.balance}");
}
