// Dart Basics

// - Operators and Mathematical Operations

// ignore_for_file: unused_local_variable, dead_code

void main() {
  // 1. Arithmetic Operators
  int a = 10;
  int b = 5;

  int sum = a + b; // Addition
  int difference = a - b; // Subtraction
  int product = a * b; // Multiplication
  double quotient = a / b; // Division
  int remainder = a % b; // Modulus

  print('Sum: $sum'); // Output: Sum: 15
  print('Difference: $difference'); // Output: Difference: 5
  print('Product: $product'); // Output: Product: 50
  print('Quotient: $quotient'); // Output: Quotient: 2.0
  print('Remainder: $remainder'); // Output: Remainder: 0

  // 2. Relational Operators
  bool isEqual = a == b; // Equal to
  bool isNotEqual = a != b; // Not equal to
  bool isGreater = a > b; // Greater than
  bool isLess = a < b; // Less than
  bool isGreaterOrEqual = a >= b; // Greater than or equal to
  bool isLessOrEqual = a <= b; // Less than or equal to
  print('Is Equal: $isEqual'); // Output: Is Equal: false
  print('Is Not Equal: $isNotEqual'); // Output: Is Not Equal: true
  print('Is Greater: $isGreater'); // Output: Is Greater: true
  print('Is Less: $isLess'); // Output: Is Less: false
  print(
    'Is Greater or Equal: $isGreaterOrEqual',
  ); // Output: Is Greater or Equal: true
  print('Is Less or Equal: $isLessOrEqual'); // Output: Is Less or Equal: false

  // 3. Logical Operators
  bool condition1 = true;
  bool condition2 = false;
  bool andCondition = condition1 && condition2; // Logical AND
  bool orCondition = condition1 || condition2; // Logical OR
  bool notCondition = !condition1; // Logical NOT
  print('AND Condition: $andCondition'); // Output: AND Condition: false
  print('OR Condition: $orCondition'); // Output: OR Condition: true
  print('NOT Condition: $notCondition'); // Output: NOT Condition: false

  // 4. Bitwise Operators
  int x = 5; // Binary: 0101
  int y = 3; // Binary: 0011
  int andResult = x & y; // Bitwise AND
  int orResult = x | y; // Bitwise OR
  int xorResult = x ^ y; // Bitwise XOR
  int notResult = ~x; // Bitwise NOT
  int leftShiftResult = x << 1; // Left shift
  int rightShiftResult = x >> 1; // Right shift
  print('Bitwise AND: $andResult'); // Output: Bitwise AND: 1
  print('Bitwise OR: $orResult'); // Output: Bitwise OR: 7
  print('Bitwise XOR: $xorResult'); // Output: Bitwise XOR: 6
  print('Bitwise NOT: $notResult'); // Output: Bitwise NOT: -6
  print('Left Shift: $leftShiftResult'); // Output: Left Shift: 10
  print('Right Shift: $rightShiftResult'); // Output: Right Shift: 2

  // 5. Assignment Operators
  int z = 10;
  z += 5; // Add and assign
  print('Add and Assign: $z'); // Output: Add and Assign: 15
  z -= 3; // Subtract and assign
  print('Subtract and Assign: $z'); // Output: Subtract and Assign: 12
  z *= 2; // Multiply and assign
  print('Multiply and Assign: $z'); // Output: Multiply and Assign: 24
  z ~/= 4; // Integer division and assign
  print(
    'Integer Division and Assign: $z',
  ); // Output: Integer Division and Assign: 6
  z %= 5; // Modulus and assign
  print('Modulus and Assign: $z'); // Output: Modulus and Assign: 1
  z &= 2; // Bitwise AND and assign
  print('Bitwise AND and Assign: $z'); // Output: Bitwise AND and Assign: 0
  z |= 3; // Bitwise OR and assign
  print('Bitwise OR and Assign: $z'); // Output: Bitwise OR and Assign: 3
  z ^= 1; // Bitwise XOR and assign
  print('Bitwise XOR and Assign: $z'); // Output: Bitwise XOR and Assign: 2
  z <<= 1; // Left shift and assign
  print('Left Shift and Assign: $z'); // Output: Left Shift and Assign: 4
  z >>= 1; // Right shift and assign
  print('Right Shift and Assign: $z'); // Output: Right Shift and Assign: 2

  // 6. Conditional Operator (Ternary Operator)
  int age = 20;
  String eligibility = (age >= 18) ? 'Eligible' : 'Not Eligible';
  print('Eligibility: $eligibility'); // Output: Eligibility: Eligible

  // 7. Null-aware Operators
  String? nullableString;
  String nonNullableString =
      nullableString ?? 'Default Value'; // Null coalescing operator
  print(
    'Non-nullable String: $nonNullableString',
  ); // Output: Non-nullable String: Default Value
  nullableString ??= 'Assigned Value'; // Null-aware assignment operator
  print(
    'Nullable String: $nullableString',
  ); // Output: Nullable String: Assigned Value
  String? anotherNullableString;
  String result =
      anotherNullableString ?? 'Fallback Value'; // Null coalescing operator
  print('Result: $result'); // Output: Result: Fallback Value
  anotherNullableString ??= 'New Value'; // Null-aware assignment operator
  print(
    'Another Nullable String: $anotherNullableString',
  ); // Output: Another Nullable String: New Value
}
