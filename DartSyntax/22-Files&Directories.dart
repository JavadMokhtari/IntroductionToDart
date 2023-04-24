import 'dart:convert';
import 'dart:io';

Future main(List<String> args) async {
  // Directories
  bool dirExists = await Directory("Logs").exists();
  if (!dirExists) {
    Future<Directory> myDir = Directory("Logs").create();

    myDir.then((path) {
      print(path);
    });
  }

  // Files
  // Read the "00-AboutDart.txt" file
  var config = File("00-AboutDart.txt");

  // Read all as string or save each line to a list
  String content = await config.readAsString();
  List<String> lines = await config.readAsLines();

  print("Number of charactors: ${content.length}\n");
  print("First line:\n${lines[0]}");

  // If the file size be large, we can read it line by line into memory
  File("00-AboutDart.txt")
      .openRead()
      .map((event) => utf8.decode(event))
      .transform(LineSplitter())
      .forEach((line) {
    print(line.length);
  });

  // Write in a file
  // If "log.txt" file doesn't exist, create it
  var logFile = File("Logs/log.txt");
  // Open the file to write (append mode)
  var log = logFile.openWrite(mode: FileMode.append);
  // Write in file
  log.write("${DateTime.now()}\n");
  /*
  The flush() method is used to flush the contents of a file to disk. This 
   means that any data that has been written to the file but not yet saved 
  will be written to disk immediately.
  */
  await log.flush();
  // close file
  await log.close();
}
