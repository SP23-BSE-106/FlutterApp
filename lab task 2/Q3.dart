class BankAccount {
  int _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  void deposit(double amount) {
    _balance += amount;
    print('Deposited: $amount');
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print('Withdrawn: $amount');
    } else {
      print('Insufficient balance!');
    }
  }

  void getBalance() {
    print('Remaining Balance: $_balance');
  }
}

void main() {
  BankAccount acc = BankAccount(12345, 1000);

  acc.deposit(7000);
  acc.withdraw(2500);
  acc.getBalance();
}
