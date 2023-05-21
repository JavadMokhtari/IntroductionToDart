/*
Generators allow the user to produce a sequence of values easily with the help 
of two generator functions: Synchronous Generator and Asynchronous Generator. 
Synchronous Generator returns an Iterable object while Asynchronous Generator 
returns a Stream object.
*/

// Create syncronous generator
Iterable<int> oddGenerator(int number) sync* {
  while (number > 0) {
    if (number.isOdd) yield number;
    number--;
  }
}

Stream<int> evenGenerator(int number) async* {
  while (number > 0) {
    if (number.isEven) yield number;
    number--;
  }
}

void main(List<String> args) {
  // Use created syncronous generator
  Iterable<int> oddNumbers = oddGenerator(10);
  for (int value in oddNumbers) print(value);
  // or:  oddGenerator(10).forEach((element) => print(element));

  // Use created asyncronous generator
  Stream<int> evenNubmers = evenGenerator(10);
  evenNubmers.listen((int value) => print(value));
  // or: evenGenerator(10).forEach((element) => print(element));
}
