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

void main(List<String> args) {
  Food F1 = Food<String>();
  F1.pizza = "Peperoni";

  Food<bool> F2 = Food<bool>();
  F2.pizza = true;

  Person person = Person("AmirAli", 18);
  print(person.firstData.runtimeType);

  // can accept both int and double type separately
  double avg = getAvg([11, 3, 59, 324, 83, 74]);
  print(avg);
}
