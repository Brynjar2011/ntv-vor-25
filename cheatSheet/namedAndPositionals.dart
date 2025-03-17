import 'dart:io';  // Import for reading user input
import 'functions.dart';

void main() {
  // Print name and job
  printMyNameAndJob('John', 'Engineer');

  // Increment example
  int sum = increment(20, 10000);
  print("Increment result: $sum");

  // Decrement example
  int decrementSum = decrement(20, 10);
  print("Decrement result: $decrementSum");

  // Example: How long until you're 50
  print("Enter your age:");
  String? input = stdin.readLineSync();  // Getting user input
  howLongTill50(input!);  // Parsing string to int

  // Returning an integer (29) from a function
  int num = return29();
  print("The function returned: $num");

  // Example of named argument usage
  namedNameAndAge(name: 'Alice', age: 30);
}

// Function that returns the integer 29
int return29() {
  return 29;
}