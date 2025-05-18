// Dart Basics

// - Inheritance

// ignore_for_file: unused_local_variable, dead_code, prefer_final_locals, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, avoid_print

// Example demonstrating Inheritance in Dart

// Base class (Parent class)
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void eat() {
    print('$name is eating.');
  }

  void sleep() {
    print('$name is sleeping.');
  }
}

// Derived class (Child class) inheriting from Animal
class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  // Overriding a method from the parent class
  @override
  void eat() {
    print('$name the $breed dog is eating dog food.');
  }

  // New method specific to Dog
  void bark() {
    print('$name is barking: Woof! Woof!');
  }
}

// Another derived class
class Cat extends Animal {
  String color;

  Cat(String name, int age, this.color) : super(name, age);

  // Overriding a method from the parent class
  @override
  void eat() {
    print('$name the $color cat is eating cat food.');
  }

  // New method specific to Cat
  void meow() {
    print('$name is meowing: Meow! Meow!');
  }
}

void main() {
  // Creating an object of the base class
  Animal genericAnimal = Animal('GenericAnimal', 5);
  genericAnimal.eat();
  genericAnimal.sleep();

  print('---');

  // Creating an object of the Dog class
  Dog dog = Dog('Buddy', 3, 'Golden Retriever');
  dog.eat();      // Overridden method
  dog.sleep();    // Inherited method
  dog.bark();     // Dog-specific method

  print('---');

  // Creating an object of the Cat class
  Cat cat = Cat('Whiskers', 2, 'Black');
  cat.eat();      // Overridden method
  cat.sleep();    // Inherited method
  cat.meow();     // Cat-specific method
}

