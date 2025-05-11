// Dart Basics

// - Collections (Lists, Sets, Maps, and Lists of Maps)

// ignore_for_file: unused_local_variable, dead_code, prefer_final_locals, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, avoid_print

void main() {
  // 1. List
  List<String> fruits = ["Apple", "Banana", "Cherry"];
  print("Fruits: $fruits");

  // Add an element to the list
  fruits.add("Date");
  print("After adding Date: $fruits");

  // Remove an element from the list
  fruits.remove("Banana");
  print("After removing Banana: $fruits");

  // Remove the last element
  fruits.removeLast();
  print("After removing last fruit: $fruits");

  // Access an element by index
  String firstFruit = fruits[0];
  print("First fruit: $firstFruit");

  // Iterate over the list
  print("Iterating over fruits:");
  for (String fruit in fruits) {
    print(fruit);
  }

  // Check if an element exists in the list
  bool hasCherry = fruits.contains("Cherry");
  print("Contains Cherry: $hasCherry");

  // Get the length of the list
  int fruitCount = fruits.length;
  print("Number of fruits: $fruitCount");

  // Get the index of an element
  int cherryIndex = fruits.indexOf("Cherry");
  print("Index of Cherry: $cherryIndex");

  // Get a sublist
  List<String> sublist = fruits.sublist(0, 2);
  print("Sublist: $sublist");

  // Use the where method to filter the list
  List<String> filteredFruits =
      fruits.where((fruit) => fruit.startsWith("A")).toList();
  print("Filtered fruits (starting with A): $filteredFruits");

  // Use the map method to transform the list
  List<String> upperCaseFruits =
      fruits.map((fruit) => fruit.toUpperCase()).toList();
  print("Uppercase fruits: $upperCaseFruits");

  // Use the reduce method to combine the list
  String combinedFruits = fruits.reduce(
    (value, element) => value + ", " + element,
  );
  print("Combined fruits: $combinedFruits");

  // Sort the list
  fruits.sort();
  print("Sorted fruits: $fruits");

  // Reverse the list
  fruits = fruits.reversed.toList();
  print("Reversed fruits: $fruits");

  // Clear the list
  fruits.clear();
  print("Cleared fruits: $fruits");

  // *******************************************

  // 2. Set
  Set<String> uniqueFruits = {"Apple", "Banana", "Cherry"};
  print("Unique Fruits: $uniqueFruits");

  // Add an element to the set
  uniqueFruits.add("Date");
  print("After adding Date: $uniqueFruits");

  // Remove an element from the set
  uniqueFruits.remove("Banana");
  print("After removing Banana: $uniqueFruits");

  // Check if an element exists in the set
  bool hasApple = uniqueFruits.contains("Apple");
  print("Contains Apple: $hasApple");

  // Get the length of the set
  int uniqueFruitCount = uniqueFruits.length;
  print("Number of unique fruits: $uniqueFruitCount");

  // Iterate over the set
  print("Iterating over unique fruits:");
  for (String fruit in uniqueFruits) {
    print(fruit);
  }

  // Clear the set
  uniqueFruits.clear();
  print("Cleared unique fruits: $uniqueFruits");

  // *******************************************

  // 3. Map
  Map<String, int> fruitPrices = {"Apple": 3, "Banana": 1, "Cherry": 2};
  print("Fruit Prices: $fruitPrices");

  // Add a key-value pair to the map
  fruitPrices["Date"] = 4;
  print("After adding Date: $fruitPrices");

  // Remove a key-value pair from the map
  fruitPrices.remove("Banana");
  print("After removing Banana: $fruitPrices");

  // Access a value by key
  int applePrice = fruitPrices["Apple"]!;
  print("Price of Apple: $applePrice");

  // 
  print(fruitPrices.keys);
  print(fruitPrices.values);

  // Iterate over the map
  print("Iterating over fruit prices:");
  fruitPrices.forEach((fruit, price) {
    print("$fruit: $price");
  });

  // Check if a key exists in the map
  bool hasCherryKey = fruitPrices.containsKey("Cherry");
  print("Contains Cherry key: $hasCherryKey");

  // Check if a value exists in the map
  bool hasPrice2 = fruitPrices.containsValue(2);
  print("Contains price 2: $hasPrice2");

  // Get the length of the map
  int fruitPriceCount = fruitPrices.length;
  print("Number of fruit prices: $fruitPriceCount");

  // Clear the map
  fruitPrices.clear();
  print("Cleared fruit prices: $fruitPrices");

  // *******************************************

  // List of Maps
  List<Map<String, dynamic>> fruitList = [
    {"name": "Apple", "price": 3},
    {"name": "Banana", "price": 1},
    {"name": "Cherry", "price": 2},
  ];
  print("Fruit List: $fruitList");

  // Add a map to the list
  fruitList.add({"name": "Date", "price": 4});
  print("After adding Date: $fruitList");

  // Remove a map from the list
  fruitList.removeWhere((fruit) => fruit["name"] == "Banana");
  print("After removing Banana: $fruitList");

  // Access a map by index
  Map<String, dynamic> firstFruitMap = fruitList[0];
  print("First fruit map: $firstFruitMap");

  // Iterate over the list of maps
  print("Iterating over fruit list:");
  for (Map<String, dynamic> fruit in fruitList) {
    print("Name: ${fruit["name"]}, Price: ${fruit["price"]}");
  }

  // Check if a map exists in the list
  bool hasCherryMap = fruitList.any((fruit) => fruit["name"] == "Cherry");
  print("Contains Cherry map: $hasCherryMap");
}
