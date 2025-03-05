//erum að sækja gögn úr öðrum lista í þessu tilfelli nöfn
//split function skiptir upp (í þessu tilfelli) fornafni og eftirnafni
//svo hægt að prenta í sitthvoru

import 'package:ntv_vor_25/methods.dart';

void main() {
//Sækjum listann af names frá þessum file lib/methods.dart
  List<String> employees = getNamesList();
  //búum til tóman "employee" lista
  List<employee> employeesTransformed =[];
  //Loop-um í gegnum listann
  for (String employeeName in employees) {
    //búum til username með createUsername function fyrri neðan
   String username = createUserName(employeeName);
   //Búum til nýtt"employee" object. p.s. object er basically  okkar
   //tegund af String eða in eða bool. Bara aðeins flókonari og geta geymt meira
   employee newEmployee = employee(name: employeeName, age: 22,username: username);
   //Bætum þessum newEmployee í listann okkar sem við bjuggum til.
   employeesTransformed.add(newEmployee);
   //prenum út
   print(newEmployee.name);
   print(newEmployee.age);
   print(newEmployee.username);
  }

}
//Hérna er employee objectioð okkar
class employee{
  String name;
  int age;
  String username;

  employee({required this.name, required this.age, required this.username});
}
//Hérna er createUserName function okkar
String createUserName(String tempName){
  List splitName = tempName.split(" ");
  String firstName = splitName[0];
  String lastName = splitName[1];
  String username = firstName + lastName.substring(0,3);
  username = username.toLowerCase();
  return username;


}
String removeIcelandicLetters(String input) {
  Map<String, String> icelandicToLatin = {
    'ð': 'd',
    'þ': 'th',
    'á': 'a',
    'é': 'e',
    'í': 'i',
    'ó': 'o',
    'ú': 'u',
    'ý': 'y',
    'ö': 'o',
    'Æ': 'Ae',
    'æ': 'ae',
    'Ð': 'D',
    'Þ': 'Th',
    'Á': 'A',
    'É': 'E',
    'Í': 'I',
    'Ó': 'O',
    'Ú': 'U',
    'Ý': 'Y',
    'Ö': 'O'
  };

  icelandicToLatin.forEach((key, value) {
    input = input.replaceAll(key, value);
  });
  return input;
}