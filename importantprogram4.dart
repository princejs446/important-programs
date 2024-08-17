import 'dart:io';

List<Map<String,dynamic>> contacts = [];

void main(){
  int? option;
  while (option!=3){
    print("1.Add\n2.Display\n3.Quit");
    option = int.parse(stdin.readLineSync()!);
    switch (option){
      case 1:
      add();
      break;                                                
      case 2:
      display();
      break;
      case 3:
      print("Thank you");
      break;

      default:
      print("Invalid option");
      break;
    }
  }
}
void add(){
  print("enter a name:");
  String name  = stdin.readLineSync()!;
  print("enter phone number:");
  String phone=stdin.readLineSync()!;
  Map<String,dynamic>contact={"name":name,"phone":phone};
  contacts.add(contact);

}

void display(){
  contacts.forEach((e){
    print("${contacts.indexOf(e) + 1}.${e["name"]}:${e["phone"]}");
  });
}