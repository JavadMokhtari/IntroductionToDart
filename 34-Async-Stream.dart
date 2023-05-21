/*
Asynchronous programming in Dart allows you to write code that can perform long-
running operations, such as network requests or file I/O, without blocking the 
program’s execution. This is achieved through the use of "Future"s and "Stream"s
which represent values that will be available at some point in the future.

A Stream represents a sequence of values that will be available over time. You 
can use the "async*" and "yield" keywords to generate streams, and you can use 
"await for" to iterate over the values in a stream.

It is a sequence of asynchronous events. It is like an asynchronous Iterable—
where, instead of getting the next event when you ask for it, the stream tells 
you that there is an event when it is ready. 
*/
import 'dart:async' show Stream;

void main(List<String> args) {
  List<int> data = [1, 2, 3, 4, 5, 6];
  Stream stream = Stream<int>.fromIterable(data);

  // Subscribe a listener
  // In this case we can have only one listener
  stream.listen((value) => print("List data: $value"));

  // "then" keyword is used to get value when is ready
  stream.first.then((value) => print("First element is $value"));
  stream.length.then((length) => print("Length is $length"));

  /*
  There are two kinds of streams: single subscription and broadcast. Single 
  subscription streams allow a maximum of one listener to this stream while 
  broadcast streams allow an infinite number of listeners to this stream. We can
  use the "asBroadcastStream()" method to make a broadcast stream from a single 
  subscription one. Broadcast streams work the same as single subscription 
  streams, but they can have multiple listeners.
  */

  Stream bcStream = stream.asBroadcastStream();

  // Now can have one or more listener
  // Get even numbers
  bcStream
      .where((value) => value.isEven)
      .listen((event) => print("$event is even"));

  // Get the first three of the stream
  bcStream.take(3).listen((value) {
    print("Took $value");
  });

  // Because the list isn't single value, should handle its error
  bcStream.single
      .then((value) => print("Single value is $value"))
      .catchError((err) => print(err));

  // Handling error in single streams
  var singleStream = stream.listen(null);

  singleStream.onData((data) => print(data));
  singleStream.onError((error) => print(error));
  singleStream.onDone(() => print("Done!"));

  // Unsubscribe the listener
  // Also can use "onError" and "oneDone"
  singleStream.onData((data) {
    if (data.isEven) singleStream.cancel();
  });
}
