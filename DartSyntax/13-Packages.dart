// Packages

/*
Packages:
A package is a set of libraries that can be deployed to "pub.dartlang.org". 
Packages are used to share code between different projects and can be used as 
dependencies in other packages. Packages can contain dependencies (listed in the
pubspec), Dart libraries, apps, resources, tests, images, and examples.

# Dart package manager --> pub
# Packages site --> pub.dev
# Every package have a "pubspec.yaml" file that contain name, version, etc.
# Example of pubspec.yaml file :
--------------------------------
name: my_app
dependencies:
  email_validator: "^1.06"
environment:
  sdk ...
--------------------------------
# To receive dependencies packages run in terminal:
PATH-TO-pubspec.yamlFOLDER/ $ dart pub get
PATH-TO-pubspec.yamlFOLDER/ $ dart pub add PACKAGE-NAME

# Upgrade Packages:
Upgrade all packages in pubspec.yaml file:
$ dart pub upgrade
Upgrade specific package;
$ dart pub upgrade PACKAGE-NAME

*/


