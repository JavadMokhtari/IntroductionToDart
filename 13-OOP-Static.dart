// Static
// static variables refer to the variables that are declared inside a class

class Person {
  // Instance variables:
  // instances can access them
  String name;
  String sex;

  // Static Variables or Class Variables :
  // Only class can access them and can help to optimize memory
  static int male = 0;
  static int female = 0;

  // Get number of instances with Person5.count
  Person({
    required this.name,
    required this.sex,
  }) {
    if (sex == "male") {
      male += 1;
    } else if (sex == "female") {
      female += 1;
    } else {
      throw "Enter male or female for sextuality";
    }
  }

  // Static Methods
  // only class can access this method
  static List<int> numberStudent() => [male, female];

  static String about() {
    List<int> sexList = numberStudent();
    return "There are ${sexList[0]} mans and ${sexList[1]} womans";
  }
}

void main(List<String> args) {
  Person p1 = Person(name: "Ali", sex: "male");
  Person p2 = Person(name: "Javad", sex: "male");
  Person p3 = Person(name: "Sara", sex: "female");
  Person p4 = Person(name: "Mina", sex: "female");
  print(Person.about());
}
// ignore_for_file: unused_local_variable