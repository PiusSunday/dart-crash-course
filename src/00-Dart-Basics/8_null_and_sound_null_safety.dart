// Dart Basics

// - Null Safety
// - Sound Null Safety
// - Nullable and Non-nullable Types
// - Null Aware Operators
// - Late Variables
// - Required Named Parameters
// - Type Promotion

// ignore_for_file: unused_local_variable, dead_code, prefer_final_locals, unnecessary_null_checks, unnecessary_null_in_if_null_operators

void main() {
  // 1. Nullable and Non-nullable Types
  // In Dart with sound null safety, variables cannot contain null by default
  String nonNullable = "Hello"; // Cannot be null
  // nonNullable = null; // Error: The value 'null' can't be assigned to a variable of type 'String'

  // To allow a variable to be null, use the ? operator
  String? nullable = "World"; // Can be null
  nullable = null; // This is valid

  print("Nullable variable: $nullable"); // Output: Nullable variable: null

  // 2. Null Aware Operators

  // a. Null-aware access operator (?.)
  String? name = null;
  print(
    name?.length,
  ); // Output: null (safely accesses length only if name is not null)

  // b. Null-aware assignment operator (??=)
  String? username = null;
  username ??= "Guest"; // Assigns "Guest" only if username is null
  print("Username: $username"); // Output: Username: Guest

  // c. Null coalescing operator (??)
  String? input = null;
  String result = input ?? "Default"; // Returns "Default" if input is null
  print("Result: $result"); // Output: Result: Default

  // 3. Null Assertion Operator (!)
  // Use this when you're certain a nullable variable isn't null
  String? message = "Important message";
  String nonNullMessage =
      message; // Placing the (!) after message will assert that message is not null
  // Be careful! This will throw an exception if message is null

  // 4. Conditional Property Access
  String? text = null;
  int? length = text?.length;
  print("Length: $length"); // Output: Length: null

  // 5. Late Variables
  // 'late' allows you to declare a non-nullable variable that will be initialized later
  late String lateInitialized;

  // We can use the variable after it's initialized
  lateInitialized = "I'm initialized now";
  print(
    "Late variable: $lateInitialized",
  ); // Output: Late variable: I'm initialized now

  // 6. Type Promotion
  String? nullableValue = "Hello";

  // Dart can promote nullableValue to non-nullable within this if block
  // Inside this block, nullableValue is treated as String, not String?
  print("Length of value: ${nullableValue.length}");

  // 7. Required Named Parameters
  // See the function definition below
  printUserInfo(name: "Alice", age: 30);
  // printUserInfo(); // Error: The named parameter 'name' is required

  // 8. Handling Nullable Collections
  List<String>? nullableList = null;
  List<String?> listWithNullableItems = ["One", null, "Three"];

  // Safely working with nullable collections
  print(
    "Nullable list length: ${nullableList?.length}",
  ); // Output: Nullable list length: null

  // 9. Flow Analysis and Definite Assignment
  String? potentialNull = getMaybeNull();

  if (potentialNull == null) {
    print("The value is null");
  } else {
    // Dart knows potentialNull is not null here
    print(
      "The value is: $potentialNull and its length is: ${potentialNull.length}",
    );
  }

  // 10. The ?? Cascade
  String? firstName = null;
  String? middleName = null;
  String? lastName = null;

  String displayName = firstName ?? middleName ?? lastName ?? "Unknown";
  print("Display name: $displayName"); // Output: Display name: Unknown
}

// Function with required named parameters
void printUserInfo({required String name, required int age}) {
  print("Name: $name, Age: $age");
}

// Function that may return null
String? getMaybeNull() {
  // Simulating a condition that might return null
  bool condition = DateTime.now().second % 2 == 0;
  return condition ? "Not null" : null;
}

// Benefits of Sound Null Safety:
// 1. Fewer null reference exceptions at runtime
// 2. Smaller code size (fewer null checks needed)
// 3. Better performance (fewer runtime checks)
// 4. Clearer API contracts (nullable vs non-nullable)
// 5. Earlier error detection (compile-time vs runtime)
