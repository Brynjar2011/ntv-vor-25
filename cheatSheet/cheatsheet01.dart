void main (List<String> arguments) {

  String firstName = "Haukur";
  String lastName = "Gunnarsson";
  print("Hi $firstName $lastName");
  //Hér prentar hún út Haukur Gunnarsson
  String fullName = firstName + " " + lastName;
  print("Hi $fullName");

  String SSN = "031181-3569";
  String fixSSN = SSN.replaceAll("-","");
  print(fixSSN);
  //replaceAll er notað til þess að taka í burtu fyrri hlutann ss "-"
  int SSNLength = fixSSN.length;
  print(SSNLength);

  String message = "Hello World";

  String fixMessage = message.replaceAll ("World", "NTV");
  print(fixMessage.toUpperCase());

  String birthDate = SSN.substring(0,6);
  print(birthDate);
  String email = "HAUKURG81@gmail.com";
  print(email.toLowerCase());
}