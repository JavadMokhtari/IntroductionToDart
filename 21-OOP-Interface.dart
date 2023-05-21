/*
Interface (is not inheritance):
An interface specifies the syntax that all classes must follow. It defines a set
of methods for an object. When a class implements an interface, it must override
all its methods and instance variables. (using "implements" keyword)
# The "class" declaration is also an interface in Dart.
*/
class Speaker {
  // Has some methods
}

class Remote {
  // Has some methods
}

class TV implements Speaker, Remote {
  // All methods of Speaker and Remote classes must override in this class
}
