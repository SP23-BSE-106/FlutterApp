class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void displayInfo() {
    print("Account Number: $accountNumber");
    print("Balance: $balance\n");
  }
}

class SavingsAccount extends Account {
  double interestRate = 0.05;

  SavingsAccount(int accountNumber, double balance) : super(accountNumber, balance);

  void addInterest() {
    double interest = balance * interestRate;
    balance += interest;
    print("Interest added: $interest");
  }
}

class CurrentAccount extends Account {
  double fee = 100.0;

  CurrentAccount(int accountNumber, double balance) : super(accountNumber, balance);

  void withdraw(double amount) {
    if (amount + fee <= balance) {
      balance -= (amount + fee);
      print("Withdrawal: $amount, Fee: $fee");
    } else {
      print("Insufficient balance!");
    }
  }
}

void main() {
  SavingsAccount s1 = SavingsAccount(101, 10000);
  s1.addInterest();
  s1.displayInfo();

  CurrentAccount c1 = CurrentAccount(202, 8000);
  c1.withdraw(2000);
  c1.displayInfo();
}
