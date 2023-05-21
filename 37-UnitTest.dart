// Install test package:
// https://pub.dev/packages/test/install
import 'package:test/test.dart';

// Define our function
double add(double x, double y) {
  return x + y;
}

void main(List<String> args) {
  // Write test for the defined function
  test("sum of given values", () {
    double expected = 2.3;
    double actual = add(1.1, 1.2);
    expect(actual, expected);
  });

  // Write group test
  group("Strings methods test", () {
    test('String.split() splits the string on the delimiter', () {
      var string = 'foo,bar,baz';
      expect(string.split(','), equals(['foo', 'bar', 'baz']));
    });

    test('String.trim() removes surrounding whitespace', () {
      var string = '  foo ';
      expect(string.trim(), equals('foo'));
    });
  });
}
