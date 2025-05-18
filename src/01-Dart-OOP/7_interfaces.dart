// Dart Basics

// Interfaces

// ignore_for_file: unused_local_variable, dead_code, prefer_final_locals, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, avoid_print

// Example demonstrating Interfaces in Dart

// In Dart, every class implicitly defines an interface.
// You can implement multiple interfaces using the 'implements' keyword.

// Define an interface (as an abstract class)
abstract class Drivable {
  void drive();
  double maxSpeed();
}

// Another interface
abstract class Flyable {
  void fly();
  double maxAltitude();
}

// A class implementing a single interface
class Car implements Drivable {
  String model;
  double topSpeed;

  Car(this.model, this.topSpeed);

  @override
  void drive() {
    print('$model is driving on the road.');
  }

  @override
  double maxSpeed() {
    return topSpeed;
  }
}

// A class implementing multiple interfaces
class FlyingCar implements Drivable, Flyable {
  String model;
  double topSpeed;
  double topAltitude;

  FlyingCar(this.model, this.topSpeed, this.topAltitude);

  @override
  void drive() {
    print('$model is driving on the road.');
  }

  @override
  double maxSpeed() {
    return topSpeed;
  }

  @override
  void fly() {
    print('$model is flying in the sky!');
  }

  @override
  double maxAltitude() {
    return topAltitude;
  }
}

// A class implementing only Flyable
class Airplane implements Flyable {
  String name;
  double ceiling;

  Airplane(this.name, this.ceiling);

  @override
  void fly() {
    print('$name is soaring through the clouds.');
  }

  @override
  double maxAltitude() {
    return ceiling;
  }
}

void main() {
  // Using Drivable interface
  Drivable myCar = Car('Tesla Model S', 250.0);
  myCar.drive();
  print('Max speed: ${myCar.maxSpeed()} km/h');
  print('---');

  // Using Flyable interface
  Flyable myPlane = Airplane('Boeing 747', 13000.0);
  myPlane.fly();
  print('Max altitude: ${myPlane.maxAltitude()} meters');
  print('---');

  // Using both interfaces
  FlyingCar myFlyingCar = FlyingCar('AeroMobil', 160.0, 3000.0);
  myFlyingCar.drive();
  print('Max speed: ${myFlyingCar.maxSpeed()} km/h');
  myFlyingCar.fly();
  print('Max altitude: ${myFlyingCar.maxAltitude()} meters');
  print('---');

  // Polymorphism: List of Drivable
  List<Drivable> drivables = [myCar, myFlyingCar];
  for (var d in drivables) {
    d.drive();
    print('Max speed: ${d.maxSpeed()} km/h');
  }

  print('---');

  // Polymorphism: List of Flyable
  List<Flyable> flyables = [myPlane, myFlyingCar];
  for (var f in flyables) {
    f.fly();
    print('Max altitude: ${f.maxAltitude()} meters');
  }
}

