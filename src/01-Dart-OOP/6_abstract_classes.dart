// Dart Basics

// Abstract Classes

// ignore_for_file: unused_local_variable, dead_code, prefer_final_locals, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, avoid_print

// Example demonstrating Abstract Classes in Dart

// Abstract class
abstract class Shape {
  // Abstract method (no implementation)
  double area();

  // Abstract method (no implementation)
  double perimeter();

  // Concrete method (has implementation)
  void describe() {
    print('This is a shape.');
  }
}

// Concrete subclass: Circle
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14159 * radius * radius;
  }

  @override
  double perimeter() {
    return 2 * 3.14159 * radius;
  }

  @override
  void describe() {
    print('This is a circle with radius $radius.');
  }
}

// Concrete subclass: Rectangle
class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }

  @override
  double perimeter() {
    return 2 * (width + height);
  }

  @override
  void describe() {
    print('This is a rectangle with width $width and height $height.');
  }
}

// Another concrete subclass: Triangle
class Triangle extends Shape {
  double a, b, c; // sides

  Triangle(this.a, this.b, this.c);

  @override
  double area() {
    // Heron's formula
    double s = (a + b + c) / 2;
    return (s * (s - a) * (s - b) * (s - c)).sqrt();
  }

  @override
  double perimeter() {
    return a + b + c;
  }

  @override
  void describe() {
    print('This is a triangle with sides $a, $b, $c.');
  }
}

// Extension method to calculate square root for double
extension SqrtExtension on double {
  double sqrt() => this > 0 ? MathSqrt._sqrt(this) : 0.0;
}

// Helper class for square root calculation (since no import)
class MathSqrt {
  static double _sqrt(double x) {
    double guess = x / 2.0;
    for (int i = 0; i < 10; i++) {
      guess = (guess + x / guess) / 2.0;
    }
    return guess;
  }
}

void main() {
  // Cannot instantiate abstract class:
  // var s = Shape(); // Error

  Shape circle = Circle(5);
  Shape rectangle = Rectangle(4, 6);
  Shape triangle = Triangle(3, 4, 5);

  List<Shape> shapes = [circle, rectangle, triangle];

  for (var shape in shapes) {
    shape.describe();
    print('Area: ${shape.area().toStringAsFixed(2)}');
    print('Perimeter: ${shape.perimeter().toStringAsFixed(2)}');
    print('---');
  }
}

