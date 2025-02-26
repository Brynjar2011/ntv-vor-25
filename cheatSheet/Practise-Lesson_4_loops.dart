import 'dart:io';

void main() {


  print("Enter pizza toppings or 'quit' to leave");

  bool pizzaOrder = true;
  while (pizzaOrder) {
    String topping = stdin.readLineSync().toString();
    print("I'll add $topping on your pizza");

    if(topping.toLowerCase() == 'quit'){
     // break;
      pizzaOrder = false;
    }
  else {
    print ("I'll add $topping on your pizza");
    }
  }

  String word = 'NTV';

  for(int i =0; i < word.length; i++) {
    print(word [i]);
  }

  List pizzas = ['pepperoni', 'Hawaiian','Cheese'];

  for(String pizza in pizzas) {
    print(pizza);
  }
  for(String pizza in pizzas) {
    print("Ég ætla að panta stóra $pizza");
  }
  for(String pizza in pizzas) {
    print("Ég elska $pizza pizza");}


}