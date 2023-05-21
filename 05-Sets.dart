void main(List<String> args) {
  // Sets
  Set<int> numbers = Set.from([1, 4, 2, 5, 9, 1, 9, 3, 4]);
  Set<int> emptySet = Set();

  /*
  Two types of set:
  1. HashSet (out of sorts)
  2. LinkedHashSet (in order)  --> default set function
  import 'dart:collection'; to use both sets
  */

  // Set Methods
  emptySet.add(7);
  numbers.addAll([5, 3, 4, 8]);
  numbers.contains(8);
  numbers.containsAll([1, 2, 3]);
  numbers.difference({2, 4, 6, 8}); // set1 - set2
  numbers.lookup(5); // search 5; if exists, returns it
  numbers.intersection({1, 3, 5, 7, 9}); // set1 intersection set2
  numbers.remove(5); // remove item value and returns true
  numbers.clear(); // remove all items

  // Set Properties
  numbers.first;
  numbers.last;
  numbers.isEmpty;
  numbers.single;
  numbers.length;
}
