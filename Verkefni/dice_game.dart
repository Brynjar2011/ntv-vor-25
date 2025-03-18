import 'dart:math';
import 'dart:io';

//Bý til klassa fyrir tening með 6 hliðum
class Dice {
  int sides;

  Dice({this.sides = 6});

  var diceSides = Random();

  //Aðferð til að kasta teningum og fá random tölu (frá 1-6) - Claude kemur sterkt inn
  //Þarf að bæta við +1 annars kemur stundum upp 0 (á að byrja á 1)
  int roll(){
    return diceSides.nextInt(sides) + 1;
  }

  }

  //Bý til klassa til að halda utan um spilara og stigafjölda - byrjar í 0.
  //Var fyrst með 2 String - name 1 og name 2...endaði í rugli...leitaði hjálpar.
class Player {
  String name1;
  int score = 0;

  Player({required this.name1});

//Bý til aðferðina við það að kasta teningum og uppfæra stöðuna hjá hvorum
//spilara fyrir sig...endaði í rulginu og fékk tips frá Claude (mjög stórt tips)

  void rolltheDice(List<Dice> dice) {
    int roundScore = 0;

    //kasta teningunum og bæti við töluna sem komin er
    for (int i = 0; i < dice.length; i++) {
      int rollResult = dice[i].roll();
      roundScore += rollResult;
      print('$name1 fékk: $rollResult á teningi ${i + 1}');
    }
    //Heildarstaðan hjá hvorum spilara uppfærð....
    score += roundScore;
    print('$name1 fékk samtals $roundScore í þessari umferð. Heildartalan: $score');
  }
}

void main() {
  // Tveir teningar skilgreinir fyrir hvorn spilara....lenti í veseni og Claude á þetta skuldlaust
  List<Dice> player1Dice = [Dice(), Dice()];
  List<Dice> player2Dice = [Dice(), Dice()];

  // Spilarar/leikmenn græjaðir
  Player player1 = Player(name1:"Haukur");
  Player player2 = Player(name1:"Kristinn");

  // tölugildi fyrir fjölda af lotum sem á að spila
  int lotur = 3;
  print("\nVelkomin í TENGINGAKAST!!!!!!!");
  // Spilað í x fjölda lotna skv skilgreiningunni hér að ofan (int lotur)
  for (int i = 1; i <= lotur; i++) {

    print("\n=== Lota $i===");

    // kallar fram/sýnir köstin í hverri lotu
    print("${player1.name1} á að gera:");
    player1.rolltheDice(player1Dice);

    print("\n${player2.name1} á að gera:");
    player2.rolltheDice(player2Dice);

    // Sýnir heildarstöðuna
    print("\nHeildarstaðan:");
    print("${player1.name1}: ${player1.score}");
    print("${player2.name1}: ${player2.score}");

    // Tekur pásu á milli "lota" fékk þetta tips frá Claude
    if (i < lotur) {
      print("\nÝttu bara á -ENTER- til að halda áfram....");
      stdin.readLineSync();
    }
  }

  // Reiknar lokastöðuna og hver sigrar eða ef endar með jafntefli
  print("\n----LOKASTAÐAN----");
  print("${player1.name1}: ${player1.score}");
  print("${player2.name1}: ${player2.score}");

  if (player1.score > player2.score) {
    print("${player1.name1} Sigrar");
  } else if (player2.score > player1.score) {
    print("${player2.name1} Sigrar");
  } else {
    print("Jafntefli!!!");
  }

}
