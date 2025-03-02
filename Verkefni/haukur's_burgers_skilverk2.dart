import 'dart:io';
import 'dart:convert';

void main(){

  bool orderMenu = true;
  print ("Welcome to Haukur's burgers \nHere is the menu:");

  List menu = [["1", " Cheese Burger ", "500" " kr"], ["2.", " Bacon Burger ", "600", " kr"], ["3", " Haukur's burger ", "1000", " kr"], ["4", " Fröllur ", "500", " kr"], ["5", " Bjór ", "1000", " kr"]];
  for (String me in menu) {
    print(me);
  }
  while (orderMenu) {
    print ("Please, select from menu e.g. 1, 2 and 4");
    String orderFromMenu = stdin.readLineSync().toString();


    if (orderFromMenu.contains("1")){
      print("Bætti.${menu[0]} við pöntunina");
      int orderFromMenu2 = int.parse(orderFromMenu);
    }
    if (orderFromMenu.contains("2")){
      print("Bætti.${menu[1]} við pöntunina");
    }
    if (orderFromMenu.contains("3")){
      print("Bætti.${menu[2]} við pöntunina");
    }
    if (orderFromMenu.contains("4")){
      print("Bætti.${menu[3]} við pöntunina");
    }
    if (orderFromMenu.contains("5")){
      print("Bætti.${menu[4]} við pöntunina");
    }


  print ("Anything else? If yes, write the number from the menu. If your order is complete write 'no'.");

  if (orderFromMenu.toLowerCase() == 'no') {
    break;
  }

}


}
