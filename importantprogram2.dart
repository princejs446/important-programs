import 'dart:io';

void main(){
  const String password="dart1234";
  int attempts=3;
  while(attempts>0){
    print("You have $attempts attempts left.");
    stdout.write("please enter your password:");
    String? input=stdin.readLineSync()!;
    if (input == password){
      print("Congratulation! you guessed the correct password");
      break;

    }
    else{
      attempts--;
      if (attempts>0){
        print("Incorrect password. try again");
      }else{
        print("Sorry,you have used all your attempts.the correct password is $password");
      }
    }

  }

}