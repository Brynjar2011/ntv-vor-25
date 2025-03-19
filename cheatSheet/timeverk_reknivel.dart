import 'dart:io';

void main() {

  print('þetta er reiknivél - skrifaðu inn það sem þú vilt gera');

  // Get first number
  print('Enter your first number: ');
  String? input1 = stdin.readLineSync();
  double num1 = double.parse(input1 ?? '0');

  // Get second number
  stdout.write('Enter your second number: ');
  String? input2 = stdin.readLineSync();
  double num2 = double.parse(input2 ?? '0');

  // Show operation options
  print('\nWhat would you like to do with these numbers?');
  print('Enter + for addition');
  print('Enter - for subtraction');
  print('Enter * for multiplication');
  print('Enter / for division');

  // Get operation choice
  stdout.write('\nYour choice: ');
  String? operation = stdin.readLineSync();

  // Calculate and show result using if/else statements
  if (operation == '+') {
    double result = num1 + num2;
    print('\nResult of addition: $num1 + $num2 = $result');
  } else if (operation == '-') {
    double result = num1 - num2;
    print('\nResult of subtraction: $num1 - $num2 = $result');
  } else if (operation == '*') {
    double result = num1 * num2;
    print('\nResult of multiplication: $num1 * $num2 = $result');
  } else if (operation == '/') {
    // Check if second number is zero
    if (num2 == 0) {
      print('\nOops! You can\'t divide by zero. That\'s not allowed in math.');
    } else {
      double result = num1 / num2;
      print('\nResult of division: $num1 / $num2 = $result');
    }
  } else {
    print('\nSorry, I don\'t recognize that operation. Please try again and enter +, -, *, or /.');
  }
}