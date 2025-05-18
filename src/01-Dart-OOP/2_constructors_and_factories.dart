// Dart OOP

// - Constructors and Factories

// ignore_for_file: unused_local_variable, unused_element

void main() {
  // Using the default constructor
  var person = Person();
  person.name = 'Alice';
  person.age = 30;

  // Using the generative constructor
  var animal = Animal('Dog', 5);
  animal.describe();

  // Using the optional parameters constructor
  var vehicle = Vehicle('Car', wheels: 4);
  vehicle.describe();
  var vehicle2 = Vehicle('Bike');
  vehicle2.describe();

  // Using the default values constructor
  var vehicle3 = Vehicle2('Truck');
  vehicle3.describe();
  var vehicle4 = Vehicle2('Bus', wheels: 6);
  vehicle4.describe();

  // Using the required named parameters constructor
  var vehicle5 = Vehicle3('Van', wheels: 4);
  vehicle5.describe();
  // var vehicle6 = Vehicle3('Scooter'); // This will cause an error because wheels is required
  var vehicle7 = Vehicle3('Scooter', wheels: 2);
  vehicle7.describe();

  // Using the positional optional parameters constructor
  var vehicle8 = Vehicle4('Tricycle');
  vehicle8.describe();
  var vehicle9 = Vehicle4('Quadricycle', 4);
  vehicle9.describe();

  // Using the named constructor
  var point1 = Point(2, 3);
  var point2 = Point.origin();
  var point3 = Point.onXAxis(5);
  var point4 = Point.onYAxis(7);

  point1.printCoordinates();
  point2.printCoordinates();
  point3.printCoordinates();
  point4.printCoordinates();

  // Using the initializer list
  var circle = Circle(5);
  circle.printArea();

  // Using the initializer list with multiple initializers
  var rectangle = Rectangle(4, 5);
  rectangle.printArea();
  var square = Rectangle.square(3);
  square.printArea();
  
  var student = Student('John', 'Doe', 1990);
  print('Student: ${student.fullName}, Age: ${student.age}');

  // Using the const constructor
  const point5 = ImmutablePoint(1, 2);
  const point6 = ImmutablePoint(1, 2);
  const point7 = ImmutablePoint(3, 4);

  print(point5);
  print(point6);
  print(point7);

  // Checking if objects are identical (same instance)
  print('point1 == point2: ${identical(point5, point6)}');
  print('point1 == point3: ${identical(point5, point7)}');

  // Using the factory constructor
  var logger1 = Logger('UI');
  var logger2 = Logger('Network');
  var logger3 = Logger('UI'); // This should return the same instance as logger1

  logger1.log('Button clicked');
  logger2.log('Sending request');
  logger3.log('Form submitted');

  print(
    'Are logger1 and logger3 the same object? ${identical(logger1, logger3)}',
  );
  print(
    'Are logger1 and logger2 the same object? ${identical(logger1, logger2)}',
  );
}

// 1. Constructors

// 1.1  Default constructor
class Person {
  late String name;
  late int age;

  // Dart implicitly creates a default constructor if none is defined
}

// 1.2 Generative Constructors

// Basic constructor
class Animal {
  String species;
  int age;

  // Constructor
  Animal(this.species, this.age); // Shorthand constructor

  void describe() {
    print('This is a $species and it is $age years old.');
  }
}

// Named Optional parameters
class Vehicle {
  String type;
  int? wheels;

  // Constructor with optional parameters
  Vehicle(this.type, {this.wheels}); // Default value for wheels

  void describe() {
    print('This is a $type with $wheels wheels.');
  }
}

// Default Values for Named Parameters
class Vehicle2 {
  String type;
  int wheels;

  // Constructor with default values
  Vehicle2(this.type, {this.wheels = 4}); // Default value for wheels

  void describe() {
    print('This is a $type with $wheels wheels.');
  }
}

// Required Named Parameters
class Vehicle3 {
  String type;
  int wheels;

  // Constructor with required named parameters
  Vehicle3(this.type, {required this.wheels}); // Required value for wheels

  void describe() {
    print('This is a $type with $wheels wheels.');
  }
}

// Positional Optional Parameters
class Vehicle4 {
  String type;
  int wheels;

  // Constructor with positional optional parameters
  Vehicle4(this.type, [this.wheels = 4]); // Default value for wheels

  void describe() {
    print('This is a $type with $wheels wheels.');
  }
}

// 1.3 Named Constructors
class Point {
  late double x;
  late double y;

  // Primary constructor
  Point(this.x, this.y);

  // Named constructor for creating a point at the origin
  Point.origin() {
    x = 0;
    y = 0;
  }

  // Named constructor for creating a point on the x-axis
  Point.onXAxis(double xCoordinate) {
    x = xCoordinate;
    y = 0;
  }

  // Named constructor for creating a point on the y-axis
  Point.onYAxis(double yCoordinate) {
    x = 0;
    y = yCoordinate;
  }

  void printCoordinates() {
    print('Point coordinates: ($x, $y)');
  }
}

// 1.4 Initializer Lists

// Basic initializer list
class Circle {
  double radius;
  double area;

  // Initializer list
  Circle(this.radius) : area = 3.14 * radius * radius;

  void printArea() {
    print('Circle area: $area');
  }
}

// Multiple Initializer Lists
class Rectangle {
  double length;
  double width;
  double area;

  // Initializer list
  Rectangle(this.length, this.width) : area = length * width;

  // Multiple Initializer lists
  Rectangle.square(double side)
    : length = side,
      width = side,
      area = side * side;

  void printArea() {
    print('Rectangle area: $area');
  }
}

class Student {
  final String fullName;
  final int birthYear;
  final int age;

  Student(String firstName, String lastName, this.birthYear)
    : fullName = '$firstName $lastName',
      age = DateTime.now().year - birthYear {
    print('Created person: $fullName');
  }
}

// 1.4 Const Constructors
class ImmutablePoint {
  final int x;
  final int y;

  // Constant constructor
  const ImmutablePoint(this.x, this.y);

  @override
  String toString() => 'Point($x, $y)';
}

// 2. Factory Constructors

class Logger {
  final String name;

  // Keep track of loggers we've already created
  static final Map<String, Logger> _cache = <String, Logger>{};

  // Private constructor
  Logger._internal(this.name);

  // Factory constructor
  factory Logger(String name) {
    // Return an existing instance if we have one
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      // Otherwise create a new instance and cache it
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  void log(String message) {
    print('[$name] $message');
  }
}
