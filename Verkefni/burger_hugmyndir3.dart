import 'dart:io';

void main() {

  List <String> menu = ["Ostborgari", "Beikonborgari", "Haukurinn", "Franskar", "Bjór", "Kók"];

  List <int> prices = [500, 750, 1000, 400, 750, 500];

  List <String> orderMenu = [];
  List <int> orderPrices = [];

  print("Velkominn á Hauks Hammara \nHér er matseðillinn:");

  for (int i = 0; i <menu.length; i++) {
    print("${i+1}. ${menu[i]}, ${prices[i]} kr");
  }

  bool orderSomething = true;

  while (orderSomething) {
    print("Hvað má bjóða þér? Sláðu inn númer af matseðli (1-6)\neða skráðu inn 'lokið' þegar þú ert búinn að panta.");
    String customerOrder = stdin.readLineSync().toString();

    if (customerOrder == 'lokið'){
        orderSomething = false;
    }
      else {
        int selection = int.parse(customerOrder);

        if (selection > 0 && selection <= menu.length) {
          int startSelect = selection;
          orderMenu.add(menu[startSelect]);
          orderPrices.add(prices[startSelect]);

          print("Bætti ${menu[startSelect]} við pöntunina þín");
        }
          else {
            print("Hey, þú ert í ruglinu - reyndu aftur");
          }

    }
  }
}
