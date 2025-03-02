import 'dart:io';
import 'dart:convert';

void main () {

  /*
  print("Skrifaðu hvaða álegg þú vilt fá á pizzuna þína");

  bool pizzaOrder = true;
  while (pizzaOrder) {
    String topping = stdin.readLineSync(encoding: utf8).toString();
    print("Ef allt er komið, skrifaðu 'quit' annars 'nei");


    if (topping.toLowerCase() == 'nei'){
      print("Hvað má bjóða þér meira á pizzuna þína?");

    }
    if (topping.toLowerCase() == 'quit') {
      break;
  }
}


  String word = 'Haukur';

  for(int a = 0; a <word.length; a++) {
    print (word [a]);

  }
  */

  List pizzas = ['pepperoni', 'Hawaiian','Cheese'];

  for(String pizza in pizzas) {
    print(pizza);
  }
  /*
  for(String pizza in pizzas) {
    print("Ég ætla að panta stóra $pizza");
  }
  for(String pizza in pizzas) {
    print("Ég elska $pizza pizza");}
*/

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
}