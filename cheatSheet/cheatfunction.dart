//mikið notaður kóði t.d. á heimasíðum á netinu (fótbolti.net dæmi þar sem
//ýtt á "stöðustöfluflip" sitthvorumegin - annar verður virkur þegar ýtt á = true

 void main(){
  print("The ligth bulb is.....");
  bool myLightSwitch = true;
  myLightSwitch = turnOnOrOff(myLightSwitch);
  turnOnOrOff(myLightSwitch);
  String onOrOff = "";
  if(myLightSwitch){
    onOrOff = "ON";
  } else {
    onOrOff = "OFF!";
  }
  print(onOrOff);
 }

 bool turnOnOrOff (bool lightSwitch){
  return !lightSwitch;
  bool result;

      if(lightSwitch == true) {
        result = false;
      } else{
        result = true;
      }

  return result;
 }

 void displayLightBulbStatus (bool lightSwitch){

 }