// ignore_for_file: unused_local_variable

void main(List<String> args) {
  // Maps
  var person = {'name': 'Javad', 'last-name': 'Mokhtari', 'age': 25};
  Map<int, String?>? data = {
    1: 'user',
    2: 'password',
    3: 'email',
  };

  // Create map from two list
  Map names = Map<int, String>.fromIterables(
    [1, 2, 3],
    ['Ali', 'Hasan', 'Reza'],
  );

  // Add item: mapName[key] = value
  data[4] = 'phoneNumber';

  // Map Properties
  data.isEmpty;
  data.keys;
  data.values;
  data.length;

  // Map Methods
  data.containsKey(1);
  data.containsValue('email');
  data.remove(2); // remove an item
  data.addAll({5: 'website', 6: 'address'});
  data.removeWhere((key, value) => key > 6);
  // If key 7 not exists then puts returned value to map
  data.putIfAbsent(7, () => 'fatherName');
  data.clear(); // Remove all items

  Map map1 = {'name': 'apple'};
  Map map2 = {'color': 'red'};
  Map map3 = {'shape': 'circle'};

  // 3 ways to combine 3 maps
  Map fruit1 = {...map1, ...map2, ...map3};
  Map fruit2 = Map.from(map1)
    ..addAll(map2)
    ..addAll(map3);
  Map fruit3 = {}
    ..addAll(map1)
    ..addAll(map2)
    ..addAll(map3);
}
