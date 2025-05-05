// Dart Basics

// - Data Types

// ignore_for_file: unused_local_variable

void main() {
  const String firstName = 'Sunny'; // Constant variable

  // 1. Data Types
  String greeting = 'Hello, $firstName'; // String
  int year = 2025; // Integer
  double pi = 3.14; // Double
  bool isActive = false; // Boolean

  // 2. String Interpolation
  String message = 'The year is $year and pi is $pi';
  print(message); // Output: The year is 2023 and pi is 3.14

  // Data Types in dart are static, meaning that the type of a variable is known at compile time.
  // This means that the type of a variable cannot be changed at runtime. For example, if you
  // declare a variable as an int, you cannot change it to a String at runtime. This is different
  // from dynamic languages like JavaScript, where the type of a variable can change at runtime.

  // In Dart, you can use the var keyword to declare a variable without specifying its type.
  // The type of the variable will be inferred from the value assigned to it. For example:
  var name = 'John Doe'; // Type inferred as String
  var age = 30; // Type inferred as int
  var height = 5.9; // Type inferred as double
  var isEmployed = true; // Type inferred as bool

  // However, it is recommended to use explicit type declarations for better readability and maintainability of the code.
  // This is because explicit type declarations make the code more readable and easier to understand.
  // It also helps to catch errors at compile time rather than at runtime.
}
