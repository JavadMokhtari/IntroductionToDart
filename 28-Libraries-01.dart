// Libraries
// import, show, hide, part, part of

// ignore_for_file: unused_import

/* 
The library declaration is optional. For a while now, part of accepts a URI, 
which reduces the need of library to a few edge cases.
*/
// Define this file as library
library MyLibrary;

/*
# Libraries:
import "dart:BUILT-IN-DART-LIBRARIES-NAME";
import "PATH-TO-YOUR-CODE";
import "package:DOWNLOADED-PACKAGE-NAME";
import "package:YOUR-CODE-PATH";
*/
import '01-HelloWorld.dart';

// import only mentioned module
import 'dart:math' show Random, log10e;

// import all modules except mention modules
import 'dart:math' hide Rectangle, pow;

// # Use modules with prefix of library name. like:
// Random rnd = math.Random()
import 'dart:math' as math;

/*
part, part of:
# "part" and "part of" are used to split a library into multiple files.
# The part directive is used in the main library file to include other files 
that are part of the library.
*/
// When this file is import, '15-Libraries-03.dart' file be import too
part '29-Libraries-02.dart';

void myFunc14() {
  print("This is from 14-Libraries");
}
