import 'dart:io';
import 'dart:math';

void main (){
  
  int randomNumber = Random().nextInt(100)+1;
  print ("randomNumber $randomNumber");

  bool game = false;
  while(game== false) {

    print("Giskaðu á töluna");
    String askNumber = stdin.readLineSync().toString();
    int askNumber2 = int.parse(askNumber);

    if (askNumber2 == randomNumber) {
      print("Þetta var rétt");
      game = true;
    }

    else if (askNumber2 > randomNumber){
      print("Of hátt, rétt tala er lægri");
  }
    else if (askNumber2 < randomNumber){
      print ("Of lágt, rétt tala er hærri");
    }

    else {
      print("Rangt, reyndu aftur");
    }

  }





  
  
  
  
}
