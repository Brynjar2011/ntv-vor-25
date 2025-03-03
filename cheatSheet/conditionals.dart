import 'dart:io';
void main () {

    //GRADING

    print("====== GRADING =====");
    //)print("Pick a number between 1-100");
    //stdout - getum skrifað í sömu línu og við setjum input-ið
    stdout.write("Pick a number between 1-100\n");
    String? input = stdin.readLineSync();

    //try tengist catch hér að neðan - sett inn til að grípa villu og prenta þá error sbr skipun hér að neðan hjá catch
    //try þarf að setja á undan parse í þessu tilfelli

    try {
    // || þýðir "eða"

    int score = int.parse(input!);
    if (score < 1 || score > 100) {
      print("Invalid input, please enter a number between 1-100");
    }
    else {
      if (score >= 90) {
        print("Grade: A");
        print("Good Job");
      }
      else if (score >= 80) {
        print("Grade: B");
        print("Good Job");
      }
      else if (score >= 70) {
        print("Grade: C");
        print("Passable Job");
      }
      else if (score >= 60) {
        print("Grade: D");
        print("Need practice");
      }
      else {
        print("Grade: F");
        print("You failed");
      }
    }
  } catch(e) {
      print("ERROR ERROR");
    }
      bool isNotLoading = false;


      //Turnery operator

      isNotLoading ? print("Not loading") : print ("Loading.....");

      if(isNotLoading){
        print("Not loading.....");
      } else{
        print("loading....");

      }

      int num = 5;

      // && og ||
      if(num > 1 && num < 4 || num == 5){
        print ("true");
      }
      else {
        print("false");
      }

}