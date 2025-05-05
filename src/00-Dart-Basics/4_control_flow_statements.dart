// Dart Basics

// - Control Flow Statements

// ignore_for_file: unused_local_variable, dead_code, prefer_final_locals, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, avoid_print

void main() {
  // 1. if-else statement
  int age = 20;
  if (age >= 18) {
    print('You are an adult.');
  } else {
    print('You are not an adult.');
  }

  // 2. switch-case statement
  String day = 'Monday';
  switch (day) {
    case 'Monday':
      print('Today is Monday.');
      break;
    case 'Tuesday':
      print('Today is Tuesday.');
      break;
    default:
      print('Today is not Monday or Tuesday.');
  }

  // 3. for loop
  for (int i = 0; i < 5; i++) {
    print('Iteration $i');
  }

  // 4. while loop
  int count = 0;
  while (count < 5) {
    print('Count: $count');
    count++;
  }

  // 5. do-while loop
  int number = 0;
  do {
    print('Number: $number');
    number++;
  } while (number < 5);

  // 6. break statement
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      break; // Exit the loop when i is 5
    }
    print('i: $i');
  }

  // 7. continue statement
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      continue; // Skip even numbers
    }
    print('Odd number: $i');
  }

  // 8. return statement
  int sum(int a, int b) {
    return a + b; // Return the sum of a and b
  }

  int result = sum(5, 10);
  print('Sum: $result');

  // 9. try-catch-finally statement
  try {
    int division = 10 ~/ 0; // Integer division by zero
  } catch (e) {
    print('Error: $e'); // Handle the error
  } finally {
    print('This block always executes.'); // Always executed
  }

  // 10. assert statement
  int value = 10;
  assert(value > 0, 'Value must be positive'); // Check if value is positive
  print('Value is positive.');

  // assert(value < 0, 'Value must be negative'); // Uncommenting this will throw an assertion error
  // print('This line will not be executed if the assertion fails.');
  // The assert statement is used for debugging purposes and is removed in production mode.
}
