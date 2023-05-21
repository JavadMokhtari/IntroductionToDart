// ignore_for_file: unused_local_variable

void main(List<String> args) {
  // Lists
  // 1. Fixed Length Lists
  var lst1 = List.filled(5, 'value');
  List lst2 = List<int>.filled(5, 1);

  // Error when changing List length
  // lst1.length += 1;
  // lst2.length += 1;

  // 2. Growable List
  List<int?> lst3 = [1, 2, 3];
  // Add two elements with null value
  lst3.length = 5;

  // Generate list
  List<int> lst4 = List.generate(8, (i) => i * i);
  // Create list from an iterable elements
  List<int> lst5 = List.of(lst4);
  // Create value and length unmodifiable list
  List lst6 = List.unmodifiable(lst5);
  // Create list (if growable: false --> fixed list)
  List lst7 = List.from(lst6, growable: false);

  /*
  List<int>?   --> only list can be "null"
  List<int?>   --> only values can be "null"
  List<int?>?  --> both list and its values can be "null"
  */

  // List Properties
  lst4.first;
  lst4.last;
  lst4.isEmpty;
  lst4.isNotEmpty;
  lst4.length;
  lst4.reversed;
  // if list has one element, returns it; else get Error
  lst4.single;

  // List Methods
  lst4.add(0);
  // Insert one element (any)
  lst4.insert(lst4.length, 64);
  // Insert all elements
  lst4.insertAll(lst4.length, [81, 100]);
  // Remove the first cell have input value
  lst4.remove(100);
  // Remove th first cell with input index
  lst4.removeAt(9);
  // Remove the last cell
  lst4.removeLast();
  // Remvoe input range of index
  lst4.removeRange(0, 3);
  // Returns a part of list
  lst4.sublist(2, 5);
  // Replace range with input list
  lst4.replaceRange(1, 5, [144, 169, 121]);
  // Iterate on list
  lst4.forEach((element) {
    if (element % 7 == 0) {
      print("forEachStep");
    }
  });

  // listName.fold(initialValue, (previousValue, element) => "Do something")
  // This example is sumation of all list elements
  int sumList1 = lst4.fold(5, (i, j) => i + j);
  print(sumList1);
  // .reduce() --> like .fold() without initial value
  int sumList2 = lst4.reduce((value, element) => value + element);
  print(sumList2);

  // Add lst5 to ls4
  lst4 = lst4.followedBy(lst5).toList();

  // First element that satisfy condition
  print(lst4.firstWhere((element) => element > 30));
  // only one element must satisfy condition till returns it, else get error
  print(lst4.singleWhere((element) => element == 121));
  // If one element of list satisfy condition, returns true
  print(lst4.any((element) => element < 50));
  // If all elements of list satisfy condition, returns true
  print(lst4.every((element) => element < 100));

  // take n element from front of list
  print(lst4.take(5));

  // void function
  lst4.shuffle();

  // Returns a map that keys is index and values gets from list
  Map<int, int> myMap = lst4.asMap();

  List darham = [1, '2', 3.2, 6, 'ali'];
  // Returns values with int type
  print(darham.whereType<int>());

  // Get set from list
  print(lst4.toSet());
}
