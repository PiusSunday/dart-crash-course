// Dart Basics

// - Exception Handling

// ignore_for_file: unused_local_variable, dead_code, prefer_final_locals, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, avoid_print

void main() {
  // 1. Try-Catch
  try {
    int result = 10 ~/ 0; // This will throw an exception
    print("Result: $result");
  } catch (e) {
    print("Caught an exception: $e");
  }

  // 2. Finally
  try {
    int result = 10 ~/ 0; // This will throw an exception
    print("Result: $result");
  } catch (e) {
    print("Caught an exception: $e");
  } finally {
    print("This block always executes.");
  }

  // 3. Throwing Exceptions
  void checkAge(int age) {
    if (age < 18) {
      throw Exception("You must be at least 18 years old.");
    }
    print("You are old enough.");
  }

  try {
    checkAge(16);
  } catch (e) {
    print("Caught an exception: $e");
  }

  // 4. Custom Exceptions
  void checkValue(int value) {
    if (value < 0) {
      throw CustomException("Value cannot be negative.");
    }
    print("Value is valid.");
  }

  try {
    checkValue(-5);
  } catch (e) {
    print("Caught an exception: $e");
  }
}

// 4. Custom Exceptions
class CustomException implements Exception {
  String message;
  CustomException(this.message);

  @override
  String toString() {
    return "CustomException: $message";
  }
}
