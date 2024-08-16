import 'dart:io';
void main(){
  while(true){
    stdout.write("enter a postive integer:");
    int? num1=int.parse(stdin.readLineSync()!);
    if(num1>0){
      print("you entered a positive integer");
      break;
    }

    else{
      print("you entered an invalid number.please try again");
    }
  }
}