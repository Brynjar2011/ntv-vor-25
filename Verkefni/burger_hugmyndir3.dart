import 'dart:io';
import 'dart:convert';

// Búa til lista - 1 fyrir rétti, 1 fyrir verð og svo 2 tóma lista fyrir pantanir (rétti og verð)
void main() {
  List <String> menu = [
    "Ostborgari",
    "Beikonborgari",
    "Haukurinn",
    "Franskar",
    "Bjór",
    "Kók"
  ];

  List <int> prices = [500, 750, 1000, 400, 750, 500];

  List <String> orderMenu = [];
  List <int> orderPrices = [];

  print("Velkominn á Hauks Hammara \nHér er matseðillinn:");

  //prenta matseðilinn og verð saman (listar menu og prices) og númera
  for (int i = 0; i < menu.length; i++) {
    print("${i + 1}. ${menu[i]}, ${prices[i]} kr");
  }

  //breyta sem segir þá til um stöðu pöntunar þ.e. viltu panta eitthvað osfrv true - false gildi neðar og þá hættir að panta (þe gefa möguleika á því)
  bool orderSomething = true;

  //þetta er loop-an sem "heldur pöntun opinni og býður upp á mismunandi möguleika".
  while (orderSomething) {
    print("Hvað má bjóða þér? Sláðu inn númer af matseðli (1-6)\neða skráðu inn 'lokið' þegar þú ert búinn að panta.");
    print("Ef þú vilt fjarlægja eitthvað úr pöntun sláðu inn 'taka út'");
    String customerOrder = stdin.readLineSync(encoding: utf8).toString();

    //sett inn try til að bregðast við/svara  villu t.d. nota string í input í stað int.
    try {

      //ljúka pöntun og gefur svo samantekt í rest
      if (customerOrder == "lokið") {
        orderSomething = false;
      }
      /*set hér inn (eftir að búið að búa til möguleika á pöntun og samráð við "Claude")
    möguleika á að taka út item í pöntun - isEmpty gildi segir að ef tómi listinn (orderMenu)
    inniheldur ekkert þá komi texti sem bendir á það.*/

      else if (customerOrder == "taka út") {
        if (orderMenu.isEmpty) {
          print("Það er ekkert komið í pöntunina - hvað ertu að spá!!!!!\n");
        }
        //Ef það er texti í orderMenu lista þá byrjað á að prenta út pöntun og boðið að velja
        //nr til að taka út (nr út frá output ekki nr skv lista).
        else {
          print("Veldu númer til að taka út");
          for (int i = 0; i < orderMenu.length; i++) {
            print((i + 1).toString() +
                ". ${orderMenu[i]} - ${orderPrices[i]} kr");
          }

          //Hér er kemur user input (gert ráð fyrir ísl texta í user input - notað úr cheatshee01_numbers)
          String removeFromOrder = stdin
              .readLineSync(encoding: utf8)
              .toString();

          //try bregaðst við input sem er ekki int
          try {

            /*Lenti í veseni með þetta - gat ekki fjarlægt síðustu línu úr pöntun, kom
            alltaf melding um að "þetta er ekki hlut af pöntuninni". Claude hjálpaði til
            eftir allskonar prófanir (þarf að draga 1 frá removeItem hér (var að reyna
            það undir "if" statment.....gekk ekki.*/
            int removeItem = int.parse(removeFromOrder) - 1;

            /*Set if statment skilyrði stæ/jafnt 0 og ekki fleir en objects í listanum orderMenu
            set síðan skipanir um að fjarlægja sem int úr "empty" listunum fyrir rétti og verð
            sem búið er að safnast á fyrri skrefum við pöntun*/
            if (removeItem >= 0 && removeItem < orderMenu.length) {
              int startRemove = removeItem;
              orderMenu.removeAt(startRemove);
              orderPrices.removeAt(startRemove);

              print("Tók ${menu[startRemove]} úr pöntuninni");
            }
            //ef int gildi passar ekki við það sem er í listanum þá kemur texti
            else {
              print("Þetta er ekki hluti af pöntuninni");
            }
            //"endinn" á try statment hér að ofan - grípur villuna og prentar textann hér að neðan
          } catch (e) {
            print(
                "Vinsamlegast notaðu númerin eins og þau koma fram á pöntuninni til að fjarlægja úr pöntun!!");
          }
        }
      }

      /*Eiginlega bara svipaðar fúnksjónir og hér að ofan, nema hér bætt í empty
      lista í stað þess að taka úr þeim*/
      else {
        int selection = int.parse(customerOrder);

        if (selection > 0 && selection <= menu.length) { //gæti líka haft 6
          int startSelect = selection - 1;
          orderMenu.add(menu[startSelect]);
          orderPrices.add(prices[startSelect]);

          print("Bætti ${menu[startSelect]} við pöntunina þín");
        }
        else {
          print("Hey, þú ert í ruglinu - reyndu aftur");
        }
      }
    } catch (e) {
      print("Vinsamlegast notaðu tölustafi frá 1-6 til að velja, reyndu aftur");
    }
    //reiknar heldarverðið m.v. hvaða "gildi" eru komin í listann "orderPrices".
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
/*Texti sem prentast eftir að pöntun er lokið nú eða ekkert pantað, gæti sleppt því að tilgreina
 verð aftur en geri það bara ekki.*/
  if (orderMenu.isNotEmpty){
    int total = 0;
    for (int price in orderPrices) {
      total += price;
    }

  print("Pöntunin er klár - Takk fyrir!");
  print("Vinsamlegast greiðið $total kr");
  }

  if (orderMenu.isEmpty) {
  print("Þú pantaðir ekki neitt - bless!!");
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
}

