import 'dart:io';
import 'dart:convert';

void main() {
  bool orderMenu = true;
  print("Welcome to Haukur's burgers \nHere is the menu:");

  List <List<dynamic>> menu = [
    ["Ostborgari", 500],
    ["Beikon borgari", 700],
    ["Haukurinn", 1000]];

  List emptyListkr = [];
  List emptyListName = [];

  for (int i = 0; i < menu.length; i++) {
    print((i + 1).toString() + '. ' + menu [i][0] + ' - ' +
        menu [i][1].toString() + ' kr');
  }
  while (orderMenu == true) {
    print("Please, select from menu e.g. 1, 2 or 3");
    String orderFromMenu = stdin.readLineSync().toString();
    print("Þú valdir $orderFromMenu ");

    if (orderFromMenu.contains("1")) {
      emptyListkr.add(menu[0][1]);
      emptyListName.add(menu[0][0]);
      print("Bætti: ${menu[0][0]} við pöntunina");
    }
    if (orderFromMenu.contains("2")) {
      emptyListkr.add(menu[1][1]);
      emptyListName.add(menu[1][0]);
      print("Bætti: ${menu[1][0]} við pöntunina");
    }
    if (orderFromMenu.contains("3")) {
      emptyListkr.add(menu[1][1]);
      emptyListName.add(menu[2][0]);
      print("Bætti: ${menu[2][0]} við pöntunina");
    }

    int total = 0;
    for (int sum in emptyListkr) {
      total += sum;
      print("Pöntunin hljóðar nú upp á $total kr");
    }

    String total2 = ' ';
    for (String $menu in emptyListName) {
      total2 += $menu;
      print("Pöntunin hljóðar nú upp á $total2");
    }
  }
}
