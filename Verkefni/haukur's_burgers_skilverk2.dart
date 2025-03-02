import 'dart:io';
import 'dart:convert';

void main(){

  bool orderMenu = true;
  print ("Welcome to Haukur's burgers \nHere is the menu:");

  List menu = ["1. Ostborgari - 500 kr", "2. Beikon borgari - 700 kr", "3. Haukurinn - 1000 kr", "4. Bjór - 1000 kr", "5. Kók - 500 kr"];
  print(menu);

  for (String me in menu) {
 print(me);
  }
    while (orderMenu == true) {
  print ("Please, select from menu e.g. 1, 2 and 4");
  String orderFromMenu = stdin.readLineSync().toString();
  print ("Þú valdir $orderFromMenu");


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
  }


  }

}
