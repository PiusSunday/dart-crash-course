// Dart Basics

// - Functions 
// - Function Types
// - Function Parameters
// - Optional Parameters
// - Named Parameters
// - Default Parameters
// - Arrow Functions
// - Higher-Order Functions
// - Anonymous Functions
// - Closures
// - Recursion
// - Function as a Variable

// ignore_for_file: unused_local_variable, dead_code, prefer_final_locals, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, avoid_print

void main() {
  // 1. Function Declaration
  void greet() {
    print("Hello, World!");
  }
  // Function Call
  greet();

  // 2. Function with Parameters
  void greetUser(String name) {
    print("Hello, $name!");
  }
  // Function Call with Argument
  greetUser("Alice");

  // 3. Function with Return Type
  int add(int a, int b) {
    return a + b;
  }
  // Function Call and Store Result
  int sum = add(5, 10);
  print("Sum: $sum");

  // 4. Optional Parameters
  void greetUserOptional(String name, [String greeting = "Hello"]) {
    print("$greeting, $name!");
  }
  // Function Call with Optional Parameter
  greetUserOptional("Bob");
  greetUserOptional("Charlie", "Hi");

  // 5. Named Parameters
  void greetUserNamed({required String name, String greeting = "Hello"}) {
    print("$greeting, $name!");
  }
  // Function Call with Named Parameter
  greetUserNamed(name: "David");
  greetUserNamed(name: "Eve", greeting: "Welcome");

  // 6. Default Parameters
  void greetUserDefault({String name = "Guest", String greeting = "Hello"}) {
    print("$greeting, $name!");
  }
  // Function Call with Default Parameter
  greetUserDefault();
  greetUserDefault(name: "Frank");

  // 7. Arrow Function
  int multiply(int a, int b) => a * b;
  // Function Call and Store Result
  int product = multiply(5, 10);
  print("Product: $product");

  // 8. Higher-Order Function
  void performOperation(int a, int b, Function operation) {
    int result = operation(a, b);
    print("Result: $result");
  }
  // Function Call with Higher-Order Function
  performOperation(5, 10, add);
  performOperation(5, 10, multiply);

  // 9. Anonymous Function
  var numbers = [1, 2, 3, 4, 5];
  var squaredNumbers = numbers.map((number) => number * number);
  print("Squared Numbers: $squaredNumbers");

  // 10. Closure
  Function makeCounter() {
    int count = 0;
    return () {
      count++;
      return count;
    };
  }
  var counter = makeCounter();
  print("Counter: ${counter()}");
  print("Counter: ${counter()}");

  // 11. Recursion
  int factorial(int n) {
    if (n == 0) {
      return 1;
    } else {
      return n * factorial(n - 1);
    }
  }
  // Function Call and Store Result
  int fact = factorial(5);
  print("Factorial: $fact");

  // 12. Function as a Variable
  Function addFunction = add;
  int result = addFunction(5, 10);
  print("Result from Function Variable: $result");

  // 13. Function as a Parameter
  void executeFunction(Function func) {
    func();
  }
  // Function Call with Function as Parameter
  executeFunction(greet);
  executeFunction(() {
    print("Anonymous Function Executed!");
  });

  // 14. Function as a Return Value
  Function createAdder(int addend) {
    return (int value) => value + addend;
  }
  var addFive = createAdder(5);
  print("Add Five: ${addFive(10)}");

  // 15. Function with Type
  void printString(String message) {
    print(message);
  }
  void printInt(int number) {
    print(number);
  }
  void printDouble(double number) {
    print(number);
  }
  void printList(List list) {
    print(list);
  }
  void printMap(Map map) {
    print(map);
  }
  void printSet(Set set) {
    print(set);
  }
  void printDynamic(dynamic value) {
    print(value);
  }
  // Function Call with Different Types
  printString("Hello, Dart!");
  printInt(42);
  printDouble(3.14);
  printList([1, 2, 3]);
  printMap({"key": "value"});
  printSet({1, 2, 3});
  printDynamic("Dynamic Value");
  printDynamic(42);
  printDynamic(3.14);
  printDynamic([1, 2, 3]);
  printDynamic({"key": "value"});
  printDynamic({1, 2, 3});
  printDynamic(() {
    print("Anonymous Function");
  });
  printDynamic(() => print("Arrow Function"));
  printDynamic(() => 42);
  printDynamic(() => 3.14);
  printDynamic(() => [1, 2, 3]);
  printDynamic(() => {"key": "value"});
  printDynamic(() => {1, 2, 3});
  printDynamic(() => () {
    print("Nested Anonymous Function");
  });
  printDynamic(() => () => print("Nested Arrow Function"));
  printDynamic(() => () => 42);
  printDynamic(() => () => 3.14);
  printDynamic(() => () => [1, 2, 3]);
  printDynamic(() => () => {"key": "value"});
  printDynamic(() => () => {1, 2, 3});
}
