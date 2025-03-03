void main(){

  List <int> listlist = [1,2,3,4,5,6];

  //for loop - ath i++ er sama og i+1
  for(int i = 0; i <listlist.length; i++){

    print("asd");
  }

  //for in

  for(int num in listlist){
    print(num);
  }


  //while
  int foo = 5;
  while(foo >0 ){
    print(foo);
    foo--;
  }


  //do while - lítið notað
  do{
    print(foo);
    foo--;
  } while(foo > 0);
}