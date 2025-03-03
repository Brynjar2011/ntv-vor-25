import 'dart:math';

void main(){

  List <String> names = ["Siggi", "Manni", "Beggi", "Egill"];

  for (int i = 0; i <names.length; i++){
   // print(names);
    print('${i+1} ${names[i]}');
  }
  for(String name in names){
    //print(name);
    print("${name}  Þú ert frábær");

  }

  //3. Create a shopping list. Make a list which includes at least five items you would
  // like to buy. Then print your list out in a nicely formatted manner.
  // i.e. human readable (loop), not program syntax.

  List <String> shopList = ["bjór", "harðfiskur", "súkkulaðirúsínur", "pizza", "sódavatn"];

  for(String shop in shopList){
    print(shop);

    }
  for (int i= 0; i <shopList.length; i++) {
    print("${i+1} - ${shopList[i]}");
  }
//4. Change your shopping list. Your preferred brand of one of the items
// is no longer sold. So you need to adjust your list.
// • Reuse the program from the previous exercise.
// Add a statement which prints the item which is no longer sold.
// • Replace that item with a different item.


  String discontinuedItem = "harðfiskur";
  print("${discontinuedItem} is not in stock");
  int discontinuedIndex = shopList.indexOf("harðfiskur");
  shopList.removeAt(discontinuedIndex);
  shopList.add("pasta");
  print("updated shopping list");
  for(String updatedItem in shopList) {
    print(updatedItem);


  }

  List listRemoved = [];
  if (shopList.contains("harðfiskur")) {
    listRemoved.add("harðfiskur - er ekki til");
    print(listRemoved);
  }
  shopList.removeAt(1);
  print(shopList);

  shopList.insert(1, "slátur");
  print(shopList);

  shopList.insert(0, "snakk");
  print(shopList);

  //látum hér forritið reikna hvar er miðjan í listanum og notum floor til að námunda (niður)

  int halfLength = (shopList.length /2).floor();

  shopList.insert(halfLength, "nammi");
  print(shopList);

  shopList.removeAt(3);
  print(shopList);

  //raða í stafrófsröð
  shopList.sort();
  print(shopList);

}