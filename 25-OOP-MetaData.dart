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
