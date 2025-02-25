import 'dart:io';
import 'dart:math';

void main (){


  int randomNumber = Random().nextInt(100)+1;
  print ("randomNumber $randomNumber");   //Tek þetta út svo talan sjáist ekki//

  int totaltries = 0;

  bool game = false;
  while(game== false) {

    print("Giskaðu á töluna");
    String askNumber = stdin.readLineSync().toString();
    int askNumber2 = int.parse(askNumber);


    if (askNumber2 == randomNumber) {
      print("Þetta var rétt");
      print ("Þú þurftir $totaltries tilraunir");
      game = true;

      print("Viltu prófa aftur? Skrifaðu Y fyrir já og N fyrir nei");
      String askTryAgain = stdin.readLineSync().toString();

        bool retry = false;
        while(retry == false) {
        if (askTryAgain == "Y");{
          print("Giskaðu á töluna");
          String askNumber = stdin.readLineSync().toString();
          int askNumber2 = int.parse(askNumber);
              }
            }
        }

    else if (askNumber2 > randomNumber){
      totaltries +=1;
      print("Of hátt, rétt tala er lægri");
  }
    else if (askNumber2 < randomNumber){
      totaltries +=1;
      print ("Of lágt, rétt tala er hærri");
    }


  }

  
  
}
