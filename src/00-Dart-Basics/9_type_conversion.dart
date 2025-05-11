// Dart Basics

// - Type Conversion
// - String to Number Conversion
// - Number to String Conversion
// - Type Casting
// - Parse Methods
// - toString Method
// - Type Checking

// ignore_for_file: unused_local_variable, dead_code, prefer_final_locals, unnecessary_null_checks, unnecessary_null_in_if_null_operators, unnecessary_type_check

void main() {
  // 1. String to Number Conversion
  String numberString = "42";
  
  // Using parse methods
  int parsedInt = int.parse(numberString);
  print("String to int: $numberString → $parsedInt"); // Output: String to int: 42 → 42
  
  String doubleString = "3.14";
  double parsedDouble = double.parse(doubleString);
  print("String to double: $doubleString → $parsedDouble"); // Output: String to double: 3.14 → 3.14
  
  // Handling potential parsing errors with try-catch
  try {
    int invalidNumber = int.parse("not a number");
    print("This won't execute");
  } catch (e) {
    print("Parsing error: $e"); // Output: Parsing error: FormatException: ...
  }
  
  // Using tryParse for safer conversion (returns null if conversion fails)
  int? safeInt = int.tryParse("123");
  print("Safe int parsing: $safeInt"); // Output: Safe int parsing: 123
  
  int? nullInt = int.tryParse("hello");
  print("Failed int parsing: $nullInt"); // Output: Failed int parsing: null
  
  // Parse with radix (base)
  String binaryString = "101010";
  int? binaryValue = int.tryParse(binaryString, radix: 2);
  print("Binary 101010 as decimal: $binaryValue"); // Output: Binary 101010 as decimal: 42
  
  // 2. Number to String Conversion
  int number = 100;
  String numberAsString = number.toString();
  print("Int to String: $number → $numberAsString"); // Output: Int to String: 100 → 100
  
  double pi = 3.14159;
  String piAsString = pi.toString();
  print("Double to String: $pi → $piAsString"); // Output: Double to String: 3.14159 → 3.14159
  
  // Formatting numbers as strings
  String formattedDouble = pi.toStringAsFixed(2); // Limit to 2 decimal places
  print("Formatted double (2 decimal places): $pi → $formattedDouble"); // Output: Formatted double: 3.14
  
  // Other double formatting options
  print("toStringAsPrecision(4): ${pi.toStringAsPrecision(4)}"); // 4 significant digits
  print("toStringAsExponential(2): ${pi.toStringAsExponential(2)}"); // Exponential notation
  
  // 3. Type Casting
  // Dart uses 'as' keyword for type casting
  num someNumber = 42;
  int someInt = someNumber as int; // Downcasting from num to int
  print("Casted to int: $someInt"); // Output: Casted to int: 42
  
  // This would cause a runtime error if someNumber was a double
  // double someDouble = someNumber as double; // This would fail
  
  // Safe casting with type checking
  dynamic value = "Hello";
  print("value is: $value (${value.runtimeType})");
  
  if (value is int) {
    int safeInt = value;
    print("Safe int: $safeInt");
  } else {
    print("Value is not an int, it's a ${value.runtimeType}");
  }
  
  // 4. Converting Between int and double
  int age = 30;
  double ageAsDouble = age.toDouble();
  print("int to double: $age → $ageAsDouble");
  
  double price = 9.99;
  int priceAsInt = price.toInt(); // Truncates decimal part
  print("double to int (truncated): $price → $priceAsInt");
  
  // 5. Rounding methods for double to int conversion
  double value1 = 3.7;
  print("toInt(): ${value1.toInt()}"); // Output: toInt(): 3 (truncates)
  print("round(): ${value1.round()}"); // Output: round(): 4 (rounds to nearest)
  print("ceil(): ${value1.ceil()}"); // Output: ceil(): 4 (rounds up)
  print("floor(): ${value1.floor()}"); // Output: floor(): 3 (rounds down)
  
  // 6. Boolean Conversion
  String trueString = "true";
  String falseString = "false";
  
  // Custom conversion
  bool toBool(String str) => str.toLowerCase() == 'true';
  
  bool boolValue1 = toBool(trueString);
  bool boolValue2 = toBool(falseString);
  
  print("String \"$trueString\" to bool: $boolValue1");
  print("String \"$falseString\" to bool: $boolValue2");
  
  // bool to String
  bool isActive = true;
  String activeString = isActive.toString();
  print("bool to String: $isActive → $activeString");
  
  // bool to int (sometimes useful)
  int activeAsInt = isActive ? 1 : 0;
  print("bool to int: $isActive → $activeAsInt");
  
  // 7. Type Checking
  var testValue = 42;
  print("Is int? ${testValue is int}"); // Output: Is int? true
  print("Is double? ${testValue is double}"); // Output: Is double? false
  print("Is num? ${testValue is num}"); // Output: Is num? true
  print("Is String? ${testValue is String}"); // Output: Is String? false
  
  // 8. Type Conversion Between Collection Types
  List<int> numberList = [1, 2, 2, 3, 3, 3, 4, 5];
  
  // Convert List to Set (removes duplicates)
  Set<int> numberSet = numberList.toSet();
  print("List to Set:"); 
  print("Original list: $numberList");
  print("As set: $numberSet"); // Output: As set: {1, 2, 3, 4, 5}
  
  // Convert Set back to List
  List<int> backToList = numberSet.toList();
  print("Set to List: $backToList"); // Output: Set to List: [1, 2, 3, 4, 5]
  
  // Convert List to Map
  List<String> cities = ["New York", "London", "Tokyo"];
  Map<String, int> cityLengths = {
    for (var city in cities) city: city.length
  };
  print("List to Map:");
  print("Cities: $cities");
  print("City name lengths: $cityLengths");
  
  // 9. DateTime Conversion
  // Current date and time
  DateTime now = DateTime.now();
  print("Current date and time: $now");
  
  // DateTime to String
  String formattedDate = "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}";
  print("Formatted date: $formattedDate");
  
  // String to DateTime
  String dateString = "2023-08-15";
  DateTime parsedDate = DateTime.parse(dateString);
  print("Parsed date: $parsedDate");
  
  // 10. Processing User Input Example
  void processUserInput(String input) {
    // Try to convert to int first
    int? asInt = int.tryParse(input);
    if (asInt != null) {
      print("Input is an integer: $asInt");
      return;
    }
    
    // Try to convert to double
    double? asDouble = double.tryParse(input);
    if (asDouble != null) {
      print("Input is a double: $asDouble");
      return;
    }
    
    // Check if it's a boolean
    if (input.toLowerCase() == "true" || input.toLowerCase() == "false") {
      bool asBool = input.toLowerCase() == "true";
      print("Input is a boolean: $asBool");
      return;
    }
    
    // Just treat as a string
    print("Input is a string: $input");
  }
  
  print("\nProcessing different user inputs:");
  processUserInput("42");
  processUserInput("3.14");
  processUserInput("true");
  processUserInput("Hello");
}
