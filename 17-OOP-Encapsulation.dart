/* 
Encapsulation: 
means hiding data within a library, preventing it from outside factors. It helps
you control your program and prevent it from becoming too complicated.
# Declaring the class properties as private by using underscore(_).
# Providing public getter and setter methods to access and update the value of 
private property.
*/
class Car1 {
  int _speed;
  // Car1({required this._speed}); --> Error
  // Solution 1:
  Car1(this._speed) {
    print(_speed);
  }
}

class Car2 {
  late int _speed;
  // Solution 2:
  Car2({required int speed}) {
    _speed = speed;
  }

  // The setter method can be defined using the set keyword as:
  void set setSpeed(int speedValue) {
    _speed = speedValue;
  }

  // The getter method can be defined using the get keyword as:
  int get getSpeed {
    return _speed;
  }
}

void main(List<String> args) {
  Car2 c2 = Car2(speed: 200);
  // c2.speed = 100; --> Error
  c2.setSpeed = 180;
  int c2Speed = c2.getSpeed;
  print("Speed of c2 car is: $c2Speed");
}
