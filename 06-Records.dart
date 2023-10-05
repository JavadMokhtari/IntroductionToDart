/*
Records are an anonymous, immutable, aggregate type. They let you bundle
multiple objects into a single object. Unlike other collection types,
records are fixed-sized, heterogeneous, and typed. Records are real values;
So, you can store them in variables.
*/
void main() {
  var record = ('First', a: 1, b: true, 'last');
  print(record); // (First, last, a: 1, b: true)
  print(record.$1); // 'First'
  print(record.a); // 1
  print(record.b); // true
  print(record.$2); // 'last' --> Skipping named parameters

  (String, int, Object) record1 = ('Jack', 123, 'Any object');
  print(record1);

  ({int a, bool b}) record2 = (a: 123, b: false);
  print(record2);

  print(swap((1, 2))); // (2, 1)
}

// You can use record type annotations to define return and parameter types
(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
