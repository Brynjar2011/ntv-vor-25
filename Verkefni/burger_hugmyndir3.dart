import 'dart:io';
import 'dart:convert';

void main() {
  List <String> menu = ["Ostborgari", "Beikonborgari", "Haukurinn", "Franskar", "Bjór", "Kók"];

  List <int> prices = [500, 750, 1000, 400, 750, 500];

  List <String> orderMenu = [];
  List <int> orderPrices = [];

  print("Velkominn á Hauks Hammara \nHér er matseðillinn:");

  for (int i = 0; i < menu.length; i++) {
    print("${i + 1}. ${menu[i]}, ${prices[i]} kr");
  }

  bool orderSomething = true;

  while (orderSomething) {
    print("Hvað má bjóða þér? Sláðu inn númer af matseðli (1-6)\neða skráðu inn 'lokið' þegar þú ert búinn að panta.");
    print("Ef þú vilt fjarlægja eitthvað úr pöntun sláðu inn 'taka út'");
    String customerOrder = stdin.readLineSync(encoding: utf8).toString();

    try {
    if (customerOrder == "lokið") {
      orderSomething = false;
    }
      else if(customerOrder == "taka út"){
        if (orderMenu.isEmpty){
          print("Það er ekkert komið í pöntunina - hvað ertu að spá!!!!!\n");
        }
          else{
            print("Veldu númer til að taka út");
            for (int i = 0; i < orderMenu.length; i++) {
              print((i + 1).toString() + ". ${orderMenu[i]} - ${orderPrices[i]} kr");
            }
            String removeFromOrder = stdin.readLineSync(encoding: utf8).toString();
            try{
            int removeItem = int.parse(removeFromOrder);

            if (removeItem >= 0 && removeItem < orderMenu.length){
              int startRemove = removeItem;
              orderMenu.removeAt(startRemove);
              orderPrices.removeAt(startRemove);

              print("Tók ${menu[startRemove]} úr pöntuninni");
            }
            else {
              print("Þetta er ekki hluti af pöntuninni");
            }
        } catch(e){
              print("Vinsamlegast notaðu númerin eins og þau koma fram á pöntuninni til að fjarlægja úr pöntun!!");
            }
          }
    }

      else {
        int selection = int.parse(customerOrder);

         if (selection > 0 && selection <= menu.length) {  //gæti líka haft 6
            int startSelect = selection - 1;
            orderMenu.add(menu[startSelect]);
            orderPrices.add(prices[startSelect]);

            print("Bætti ${menu[startSelect]} við pöntunina þín");
         }
         else {
         print("Hey, þú ert í ruglinu - reyndu aftur");
        }
      }
  } catch(e){
      print("Vinsamlegast notaðu tölustafi frá 1-6 til að velja, reyndu aftur");
  }
    if (orderPrices.isNotEmpty) {
      int total = 0;
      for (int price in orderPrices) {
        total += price;
      }

      print("Pöntun hljóðar nú upp á:\n");
      for (int i = 0; i < orderMenu.length; i++) {
        print((i + 1).toString() + ". ${orderMenu[i]} - ${orderPrices[i]} kr");
      }
      print("Samtals: $total kr\n");
    }
  }

  print("Pöntunin er klár - Takk fyrir!");
  if (orderMenu.isEmpty) {
    print("Þú pantaðir ekki neitt - bless");
  }
/*  else {
    int sumtotal = 0;
    for (int i = 0; i < orderMenu.length; i++) {
      print(
          "Pöntunin þín hljóðar upp á:\n ${orderMenu[i]} - ${orderPrices[i]} kr");
    }
  }*/

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

