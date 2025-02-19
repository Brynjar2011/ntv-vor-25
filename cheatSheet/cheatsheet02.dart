import 'dart:io';
import 'dart:convert';
void main(List<String> arguments) {
 /*
  int personAge =17;
  int driverLicenceAge = 17;
  bool doesPersonHaveDriversLicence = false;
  print(personAge);
  if(personAge >= driverLicenceAge && doesPersonHaveDriversLicence == true) {
    print("Þú mátt keyra");
  } else if(personAge >= driverLicenceAge && doesPersonHaveDriversLicence == false) {
    print("Þú mátt hringja í ökukennara og byrja að læra að keyra");
  }
  else {
    print("Taktu strætó, þú mátt ekki keyra");
  }
  if(!(5>7)) {
    print("This is true");
  }
  else {
    print("This is false");
  }
  */

  /*
  int i = 0;
  while(i < 10) {
    i = i+1;
    print (i);

   }
*/


  bool authenticated = false;
  while(authenticated == false) {
    String myPassword = "Eglish123";
    String username = "admin";

    print("Enter your username");
    String loginUser = stdin.readLineSync().toString();

    print("Enter your Password");
    String loginPassword = stdin.readLineSync().toString();

    if (loginUser.toLowerCase() == username.toLowerCase() &&
        loginPassword == myPassword) {
      print("You are in. Welcome");
      authenticated = true;
    }
    else {
      print("Username or Password incorrect");
      print("Plese try again");
    }
  }
}
