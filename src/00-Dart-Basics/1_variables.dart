// Dart Basics

// - Variables

// ignore_for_file: unused_local_variable

void main() {
  // 1. Variables
  var name = 'John Doe'; // Type inference
  String city = 'New York'; // Explicit type declaration
  int age = 30;
  double height = 5.9;
  bool isEmployed = true;

  // 2. Final vs Const Variables

  // Final variables are also known as runtime constants. They can be set only 
  // once and are initialized at runtime.

  // Example:
  final String country = 'USA'; // Final variable
  // country = 'Canada'; // Error: Cannot assign a value to a final variable

  // Const variables are compile-time constants. They must be initialized at
  // compile time and cannot be changed.
  
  // Example:
  const String continent = 'North America'; // Const variable
  // continent = 'Europe'; // Error: Cannot assign a value to a const variable

  // Well, at first look, it may seem like there is no difference between final and const.
  // But there is a difference. The difference is that final variables are initialized at runtime,
  // while const variables are initialized at compile time. So, if you want to create a variable
  // that can be changed at runtime, you should use final. If you want to create a variable that
  // cannot be changed at runtime, you should use const.
  // In other words, final variables are initialized when the program is run, while const
  // variables are initialized when the program is compiled.

  // This could occur when you are using a variable that is not initialized to a
  // value yet but you are trying to use it in a function or method. For example, if you
  // have a variable that is declared but not initialized, and you try to use it in a function
  // or method, you will get an error. This is because the variable is not initialized to a value
  // yet, and you cannot use it in a function or method until it is initialized to a value.
  

  // Example:
  // final String name; // Error: The final variable 'name' can only be set once.
  // name = 'John Doe'; // Error: The final variable 'name' can only be set once.
  // final String name = 'John Doe'; // Correct: The final variable 'name' is initialized to a value.
}
