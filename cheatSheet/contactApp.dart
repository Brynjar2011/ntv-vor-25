import 'dart:io';

void main(){
  // Búa til contact forrit

  // Contact tekur inn Name, phonenumber og email.

  // methods addNewContact, listAllContacts, deleteContactByName

  // addað contact, séð alla contacts, delete'að contacts og exit application

  // prompta user fyrir input

  bool isActive = true;

  ContactManager contactManager = ContactManager();

  while(isActive){

    print('\n1. Add Contact');
    print('\n2. View contacts');
    print('\n3. Delete contact');
    print('\nexit. Exit');
    print('\nSelect an option!');

    String? input = stdin.readLineSync();

    switch (input){
      case '1':
        print('Enter name:');
        String? name =stdin.readLineSync();
        print('Enter phone number');
        String? phoneNumber = stdin.readLineSync();
        print('Enter email address:');
        String? emailAddress = stdin.readLineSync();

        // Búa til contact og adda honum í listann.
        Contact contactToAdd = Contact(name!, emailAddress!, phoneNumber!);
        contactManager.addContact(contactToAdd);
        break;
      case '2':
      // view contacts
        contactManager.displayContacts();
        break;
      case '3':
      //delete
        print('Enter the name of contact to delete:');
        String? nameToDelete = stdin.readLineSync();
        contactManager.deleteContactByName(nameToDelete!);
        break;
      case 'exit':
        print('Exiting...');
        isActive = false;
      default:
        print('Invalid option. Try again.');
    }
  }






}

// contact
class Contact{
  String name;
  String phoneNumber;
  String email;

  Contact(this.name, this.email, this.phoneNumber);
}

// contact manager
class ContactManager {
  // Listi af öllum contacts
  List<Contact> contacts = [];

  //display all contacts
  void displayContacts(){
    if(contacts.isEmpty){
      print('No contacts!');
      return;
    }
    print('Contacts:');
    for(Contact contact in contacts ){
      print('${contact.name},${contact.phoneNumber},${contact.email}');
    }
  }

  // addað contact
  void addContact(Contact contact){
    contacts.add(contact);
  }

  // deletað contact
  void deleteContactByName(String name){
    Contact contactToRemove = contacts.firstWhere((contact)=>
    contact.name.toLowerCase() == name.toLowerCase(),
        orElse: () => Contact('', '', '')
    );

    if(contactToRemove != null){
      contacts.remove(contactToRemove);
      print('Contact deleted: ${contactToRemove.name}');
    }
  }



}