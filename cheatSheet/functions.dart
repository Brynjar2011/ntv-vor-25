
void howLongTill50(String age){
  int yearsTill50 = 50 - int.parse(age);
  print("In $yearsTill50 years you will turn 50!! ");
}

// positional
void positionalNameAndAge(String name, int age){
  print("My name is $name and i am $age years old");
}

// named
void namedNameAndAge({String name = "Jón", int age = 25}){
  print("My name is $name and i am $age years old");
}

// Example of a void function
void printMyNameAndJob(String name, String job) {
  print("Ég heiti $name og er $job");
}

// Increment function (returns the sum of two integers)
int increment(int num1, int num2) {
  return num1 + num2;
}

// Decrement function (returns the difference of two integers)
int decrement(int num1, int num2) {
  return num1 - num2;
}