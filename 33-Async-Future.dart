/* 
Asynchronous programming in Dart allows you to write code that can perform long-
running operations, such as network requests or file I/O, without blocking the 
program’s execution. This is achieved through the use of "Future"s and "Stream"s
which represent values that will be available at some point in the future.

A Future represents a single value that will be available at some point in the 
future. You can use the "async" and "await" keywords to write asynchronous code 
that looks similar to synchronous code. For example, you can use await to wait 
for a Future to complete before continuing with the next line of code.
*/
import 'dart:async' show Future;
import 'dart:io' show sleep;

int get getPrice {
  sleep(Duration(seconds: 2));
  return 2500;
}

// Define Future function
Future<int> myFuturePrice() {
  sleep(Duration(seconds: 2));
  return Future(() => 2500);
}

// We should use "async" keyword to declare having await variable or function
void main(List<String> args) async {
  /*
  Create a Future that will complete with the string value after a delay of two 
  seconds. Using the "then" method to register a callback that will be called 
  when the Future completes.
  */

  // When value got, then run these lines
  Future<int> futurePrice = myFuturePrice();
  futurePrice.then((value) {
    print("Future: Price is $value");
  });

  Future<String> myReceiver = Future.delayed(
    Duration(seconds: 2),
    () => "Future.delay: Price is 2500",
  );
  myReceiver.then((value) {
    print(value);
  });

  // Wait to get value from getPrice and then execute next line
  int price = await getPrice;
  print("await: Price is $price");
}
