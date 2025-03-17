import 'dart:io';

  class Person{

    String name;
    int age;
    String? gender;
    String enemy;

    Person({required this.name, required this.age, this.gender = "unknown", this.enemy = "No one"});

    void introduction(){
      print("Hi, I am $name and I am $age years old and I am a $gender. My greatest enemy is $enemy");
    }




    }
    class Vehicle {
    String brand;
    int year;

    Vehicle ({required this.brand, required this.year});

    void displayInfo(){
    print("$brand - $year");

    }
    }
    class Car extends Vehicle{
      int doors;
      String type;
      int mileage;

      Car(required this.mileage, required this.doors, required this.type) : super(brand, year);

    }




   void main(){




     /*
  print("Enter your name");
  String? name = stdin.readLineSync();

  print("Enter your age please");
  int? age = int.parse (stdin.readLineSync()!);

  print("Enter your gender *optional*");
  String? gender = stdin.readLineSync();

  print("Who is your enemy? *Optional*");
  String? enemy = stdin.readLineSync();

  Person user = Person(name: name!, age: age, gender: gender, enemy: enemy!);

  user.introduction();

  Person person1 = Person(name: "Haukur", age: 43);
  Person person2 = Person(name: "Hrönn", age: 42, gender: "female");

  person1.introduction();
  person2.introduction();

   */
}
