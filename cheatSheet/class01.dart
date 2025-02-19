import 'package:ntv_vor_25/methods.dart';
import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {

  /*
    0. Create a personal message. Use a variable to represent a person's name, and print a
    message to that person. Your message should be simple, such as 'Good morning
    Hjörtur, would you like to learn Dart strings today?'
    Store Message and Name in seperate variable.
   */

  String firstName = "Hrönn";
  String lastName = "Valgeirsdóttir";
  String fullName = firstName + " " + lastName;
  String message = "Góðan daginn ";
  print(message + fullName);

  String person = "Haukur";
  print("Hello $person how are you?");

  /* 1. Find a quote from a famous person you admire. Print the quote and the name of its
  author. Your output should look something like the following, including the
  quotation marks:
  1. Albert Einstein once said, 'A person who never made a mistake never tried
  anything new.'
  */

  String quoteLine = "'Life is like a box of chocolates, you never know what you're going to get.'";
  String personName = "Forrest Gump";
  print ("$personName once said, $quoteLine");


  /*
    2. Assign a message to a variable, and print that message. Then change the value of
  the variable to a new message, and print the new message.
   */

  String message1 = "Liverpool best og Doucouré er ræfill";
  print(message1);
  message1 = "Liverpool er langbest og Richarlison er ræfill";
  print(message1);
  String newmessage1 = message1.replaceAll ("er langbest", "vinnur ensku deildina");
  print(newmessage1);


  /*
    3.  Remove all the spaces from the rhyme. And print the modified rhyme.
   */
  String NureseryRyhme = "Eena, meena, mina, mo, Catch a mouse by the toe; If he squeals let him go, Eeena, meena, mina, mo.";

  String fixNureseryRyme = NureseryRyhme.replaceAll(" ", "");
  print(fixNureseryRyme);



  /*
   4. Prompt a user for their full name (first name and last name)
    1. Store the users entry.
    2. Display the users entry with every letter being capitalised.
    3. Replace the first name with your name, and display it.
    4. Capitalise and display the users full name with each word having a capital
    first letter, and the other letters being lowercase.
   */
  print("Hvað heitir þú?");
  String firstName2 = stdin.readLineSync(encoding: utf8).toString();

  print("Hvert er eftirnafn þitt?");
  String lastName2 = stdin.readLineSync(encoding: utf8).toString();
  print("Sæll $firstName2 $lastName2");
  String fullName2 = firstName2 + " " + lastName2;
  String capsName1 = firstName2[0].toUpperCase() + firstName2.substring(1).toLowerCase();
  String capsName2 = lastName2[0].toUpperCase() + lastName2.substring(1).toLowerCase();
  print(capsName1 + " " + capsName2);

  firstName2 = firstName2.replaceAll(firstName2, "Haukur");
  print("Sæll $firstName2 $lastName2");




  /*
    5. Display the following SSN on the correct Format:
      F.x. 2006892409
   */
  String SSN1 = "200689-2409";
  String SSN2 = "200689 2409";
  String SSN3 = "2 006 8924 09";

  String newSSN1 = SSN1.replaceAll("-", "");
  print (newSSN1);
  String newSSN2 = SSN2.replaceAll(" ", "");
  print (newSSN2);
  String newSSN3 = SSN3.replaceAll(" ", "");
  print (newSSN3);


  /*
  Bónus task calculate the age from the SSN.
   */
  String birthDate = newSSN1.substring(4,6);
  int birthDate2 = int.parse(birthDate);
  int thisYear = DateTime.now().year;
  int birthYear = 1900 + birthDate2;
  int age = thisYear - birthYear;
  print("Þú ert $age ára");
}
