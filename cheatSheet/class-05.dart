void main() {

  var teamsPL = ["Liverpool", "Everton", "West Ham"];
  print (teamsPL);

  teamsPL [1] = "Fulham";
  print(teamsPL);

  teamsPL.add("Aston Villa");
  print (teamsPL);

  teamsPL.addAll(["Everton", "Man Shitty", "Arsenal"]);
  print(teamsPL);

  var emptyList = [];
  print(emptyList);

  teamsPL.insert(1, "Nott For");
  print(teamsPL);

  teamsPL.insertAll(4, ["Bmoth", "ManUtd"]);
  print(teamsPL);

  teamsPL.remove("ManUtd");
  print(teamsPL);

  teamsPL.removeAt(1);
  print(teamsPL);

  print(teamsPL.indexOf("Arsenal"));
  teamsPL.removeAt(7);
  print(teamsPL);

  teamsPL.removeRange(1,3);
  print(teamsPL);

  teamsPL.removeLast();
  print(teamsPL);

}