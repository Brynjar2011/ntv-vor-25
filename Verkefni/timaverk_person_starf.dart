import 'dart:io';
import 'dart:math';

class Person {
  String name;
  int age;
  String job;

  Person({this.name,this.age,this.job});

  //Greeting
void greeting() {
  print("Hi, my name is $name and I am $age years old.");
}

//Birthday
void birthday(){

  age++;
  print("Yess it is my birthday today and I ame $age year old");
}
//Quit Job
void quitjob(){

  job = "atvinnulaus!"
  }

}

// ** VERKEFNI **
// Búa til class sem heitir Person
// Person er með nafn, aldur, starf
// Búum til method/aðferð sem: prentar út nafnið - Afmæli ár bætist við á aldurinn og prentar-
// svo út nýja aldurinn - Segja upp. Prentar út uppsögn eða bara ég hætti í $job takk fyrir mig.

