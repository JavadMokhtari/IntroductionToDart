/* 
Abstract class
# The abstract class may or may not have abstract methods i.e. it can have 
either abstract or concrete methods.
# A class declared as abstract can’t be initialized.
# An abstract class can be extended, but if you inherit it then you have to make
sure that all the abstract methods in it are provided with implementation.
*/
abstract class Car {
  int maxSpeed();
  String properties();
  String status() => "Car is ready";
}

class Pegout extends Car {
  @override
  int maxSpeed() => 220;

  @override
  String properties() => """
                        Brand: Pegout,
                        Model: 206,
                        color: black,
                        Year: 2020
                        """;
}
