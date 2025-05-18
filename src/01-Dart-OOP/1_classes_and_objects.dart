// Dart OOP

// - Classes, Constructors, and Objects

// 2. Creating and Using Objects
void main() {
  // Creating an object of the Person class
  var person1 = Person();

  // Setting property values
  person1.name = 'Alice';
  person1.age = 30;

  // Calling a method
  person1.introduce();

  // Creating another object
  var person2 = Person();
  person2.name = 'Bob';
  person2.age = 25;
  person2.introduce();

  // Creating an object with constructor
  // Using Constructor on the Animal class
  var animal = Animal('Dog', 5);
  animal.describe();

  // Creating an object with named constructor
  var vehicle = Vehicle.withWheels(4);
  vehicle.describe();

  // Creating an object with default constructor
  var vehicle2 = Vehicle('Car', 4);
  vehicle2.describe();

  // Creating a Rectangle object
  var rectangle = Rectangle(10.0, 5.0);
  print('Rectangle width: ${rectangle.width}, height: ${rectangle.height}');

  // Using the instance methods
  print('Area: ${rectangle.getArea()}');
  print('Perimeter: ${rectangle.getPerimeter()}');
  rectangle.scale(2.0);
  print(
    'After scaling - width: ${rectangle.width}, height: ${rectangle.height}',
  );

  // Creating a BankAccount object
  var account = BankAccount('Pius Sunday', "123456789");

  // Using the account methods
  print('\nInitial balance: \$${account.balance}');

  account.deposit(500.0);
  print('After deposit: \$${account.balance}');

  account.withdraw(200.0);
  print('After withdrawal: \$${account.balance}');

  // Trying to withdraw more than balance
  account.withdraw(2000.0); // This should print an error message

  // Display account information
  account.displayInfo();
}

// 1. Creating a Class
class Person {
  // Properties (instance variables)
  late String name;
  late int age;

  // Method
  void introduce() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

// 3. Constructors
class Animal {
  String species;
  int age;

  // Constructor
  Animal(this.species, this.age);

  void describe() {
    print('This is a $species and it is $age years old.');
  }
}

// 4. Using Named Constructors
class Vehicle {
  String type;
  int wheels;

  // Default constructor
  Vehicle(this.type, this.wheels);

  // Named constructor
  Vehicle.withWheels(this.wheels) : type = 'Unknown';

  void describe() {
    print('This is a $type with $wheels wheels.');
  }
}

// Instance Methods
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  // Instance methods
  double getArea() {
    return width * height;
  }

  double getPerimeter() {
    return 2 * (width + height);
  }

  bool isSquare() {
    return width == height;
  }

  void scale(double factor) {
    width *= factor;
    height *= factor;
  }

  void describe() {
    print('Rectangle with width: $width, height: $height');
    print('Area: ${getArea()}, Perimeter: ${getPerimeter()}');
    print('This rectangle ${isSquare() ? "is" : "is not"} a square');
  }
}

// Private Properties and Methods
class BankAccount {
  // Private properties (denoted by _)
  String _accountNumber;
  double _balance;
  final String _accountHolder;

  BankAccount(this._accountHolder, this._accountNumber) : _balance = 0.0;

  // Public methods to access private properties
  String get accountHolder => _accountHolder;
  String get accountNumber => _accountNumber;
  double get balance => _balance;

  // Private method to validate amount
  bool _isValidAmount(double amount) {
    return amount > 0;
  }

  // Private method to log transactions
  void _logTransaction(String type, double amount) {
    print(
      '[$type] Amount: \$${amount.toStringAsFixed(2)} - Balance: \$${_balance.toStringAsFixed(2)}',
    );
  }

  // Public methods that use private properties and methods
  void deposit(double amount) {
    if (_isValidAmount(amount)) {
      _balance += amount;
      _logTransaction('DEPOSIT', amount);
    } else {
      print('Invalid deposit amount');
    }
  }

  bool withdraw(double amount) {
    if (_isValidAmount(amount) && amount <= _balance) {
      _balance -= amount;
      _logTransaction('WITHDRAW', amount);
      return true;
    } else {
      print('Invalid withdrawal amount or insufficient funds');
      return false;
    }
  }

  void displayInfo() {
    print('Account Holder: $_accountHolder');
    print('Account Number: $_accountNumber');
    print('Current Balance: \$${_balance.toStringAsFixed(2)}');
  }
}
