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

void main(List<String> args) {
  double avgExt = [1, 2, 3, 4].average;
  print(avgExt);
}
