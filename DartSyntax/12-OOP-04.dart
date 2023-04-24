// Extension
// Generic
// Type casting, type safety
// MetaData

// ignore_for_file: unused_local_variable

class Animal {}

class Dog extends Animal {}

void main(List<String> args) {
  // Extension
  double avgExt = [1, 2, 3, 4].average;
  print(avgExt);

// Generic
  Food F1 = Food<String>();
  F1.pizza = "Peperoni";

  Food<bool> F2 = Food<bool>();
  F2.pizza = true;

  Person person = Person("AmirAli", 18);

  // can accept both int and double type separately
  double avg = getAvg([11, 3, 59, 324, 83, 74]);
  print(avg);

  // Type casting:
  Animal animal = Dog();
  // Dog dog = animal; --> static type checking error
  Dog dog = animal as Dog;
  print(dog);

  // Type Safety
  var x = 10;
  // x = "Ramin"; --> Error
  // "dynamic" keyword
  dynamic y = 10;
  y = "Ramin";
}

// Extension
// Extensions allow you to extend an existing library without using inheritance
class MyClass {
  static double averageMethod(List<int> numbers) {
    int sum = 0;
    for (int n in numbers) {
      sum += n;
    }
    return sum / numbers.length;
  }
}

/*
# We want [1, 2, 3].average(), instead of average([1, 2, 3])
# To do this, we difine an extension on List<int> :

extension ExtensionName on ClassName {
	ReturnType methodName(ParameterType parameter) {
		// implementation
	}
}
*/
extension MyExtension on List<int> {
  // Don't have any parameters --> Using "get"
  double get average {
    int sum = 0;
    // Use the "this" to refer to the List<int>
    for (int n in this) {
      sum += n;
    }
    return sum / this.length;
  }
/*
Extension name can be used when using import statement and a show clause:
import 'my_extension.dart' show MyExtension;
*/
}

/*
Generic:
Generics is a way to create a class, or function that can work with different
types of data (objects).
<E> : elements(such list elements)
<K, V> : keys and values
<T> : type
<S> : type
<U> : type
*/
// Example 1
class Food<T> {
  late T pizza;
  late T hamberger;
}

// Example 2
class Person<T> {
  T firstData, secondData;
  // Constructor can accept dynamic types
  Person(T this.firstData, T this.secondData);
}

// other usage of generic:
double getAvg<T extends num>(List<T> numbers) {
  double sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  return sum / numbers.length;
}

// MetaData
class ToDo {
  final String who;
  final String what;
  const ToDo(this.who, this.what);
}

class UsingMetadata {
  // When metadata function have inputs --> it's uppercase
  @ToDo("Shayan", "implement shop app")
  void shopApp() {
    print("Status");
  }

  // Not have inputs --> it's lowercase
  // like: @override
}
