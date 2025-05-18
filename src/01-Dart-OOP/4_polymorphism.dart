// Dart Basics

// Polymorphism

// ignore_for_file: unused_local_variable, dead_code, prefer_final_locals, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, avoid_print

// Example demonstrating Polymorphism in Dart

// Base class
class Animal {
  String name;

  Animal(this.name);

  // Method to be overridden
  void makeSound() {
    print('$name makes a sound.');
  }
}

// Derived class 1
class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name barks: Woof! Woof!');
  }

  void fetch() {
    print('$name is fetching the ball.');
  }
}

// Derived class 2
class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('$name meows: Meow! Meow!');
  }

  void scratch() {
    print('$name is scratching the post.');
  }
}

// Derived class 3
class Cow extends Animal {
  Cow(String name) : super(name);

  @override
  void makeSound() {
    print('$name moos: Moo! Moo!');
  }

  void graze() {
    print('$name is grazing in the field.');
  }
}

void main() {
  // Polymorphism: Using a list of base class type to store different derived class objects
  List<Animal> animals = [
    Dog('Buddy'),
    Cat('Whiskers'),
    Cow('Bessie'),
    Dog('Max'),
    Cat('Luna'),
  ];

  // Each animal makes its own sound (dynamic dispatch)
  for (var animal in animals) {
    animal.makeSound();
  }

  print('---');

  // Accessing subclass-specific methods using type checking and casting
  for (var animal in animals) {
    if (animal is Dog) {
      animal.fetch();
    } else if (animal is Cat) {
      animal.scratch();
    } else if (animal is Cow) {
      animal.graze();
    }
  }
}

