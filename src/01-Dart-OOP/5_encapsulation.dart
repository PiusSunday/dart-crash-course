// Dart Basics

// Encapsulation

// ignore_for_file: unused_local_variable, dead_code, prefer_final_locals, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, avoid_print

// Example demonstrating Encapsulation in Dart

// Encapsulation is the concept of restricting direct access to some of an object's components,
// which means the internal representation of an object is hidden from the outside.
// This is typically achieved by making fields private and providing public getter/setter methods.

// BankAccount class with encapsulation
class BankAccount {
  // Private fields (by convention, use underscore)
  String _accountHolder;
  String _accountNumber;
  double _balance;

  // Constructor
  BankAccount(this._accountHolder, this._accountNumber, [double initialBalance = 0.0])
      : _balance = initialBalance;

  // Public getter for account holder
  String get accountHolder => _accountHolder;

  // Public getter for account number (read-only)
  String get accountNumber => _accountNumber;

  // Public getter for balance (read-only)
  double get balance => _balance;

  // Public setter for account holder (allows changing the name)
  set accountHolder(String name) {
    if (name.isNotEmpty) {
      _accountHolder = name;
    } else {
      print('Account holder name cannot be empty.');
    }
  }

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited \$${amount.toStringAsFixed(2)}');
    } else {
      print('Deposit amount must be positive.');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew \$${amount.toStringAsFixed(2)}');
    } else if (amount > _balance) {
      print('Insufficient balance.');
    } else {
      print('Withdrawal amount must be positive.');
    }
  }

  // Method to display account information
  void displayInfo() {
    print('Account Holder: $_accountHolder');
    print('Account Number: $_accountNumber');
    print('Balance: \$${_balance.toStringAsFixed(2)}');
  }
}

void main() {
  // Creating a BankAccount object
  var account = BankAccount('Alice', '987654321', 1000.0);

  // Accessing public getters
  print('Account Holder: ${account.accountHolder}');
  print('Account Number: ${account.accountNumber}');
  print('Initial Balance: \$${account.balance}');

  // Modifying account holder using setter
  account.accountHolder = 'Alice Smith';
  print('Updated Account Holder: ${account.accountHolder}');

  // Trying to set an empty account holder name
  account.accountHolder = '';

  // Depositing money
  account.deposit(500.0);
  print('Balance after deposit: \$${account.balance}');

  // Withdrawing money
  account.withdraw(300.0);
  print('Balance after withdrawal: \$${account.balance}');

  // Trying to withdraw more than balance
  account.withdraw(2000.0);

  // Trying to deposit a negative amount
  account.deposit(-100.0);

  // Displaying account information
  print('\nAccount Information:');
  account.displayInfo();

  // The following lines would cause errors because the fields are private:
  // account._balance = 1000000; // Error: '_balance' can't be accessed
  // print(account._accountNumber); // Error: '_accountNumber' can't be accessed
}

