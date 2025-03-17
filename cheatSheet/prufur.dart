import 'dart:io';
import 'dart:convert';

void main(){




  int return5(){

    return askNum();}
int num = return5();
  print("tala");
  String askNum =stdin.readLineSync().toString();
  int? num1 = int.tryParse(askNum);

   print(return5());

}

