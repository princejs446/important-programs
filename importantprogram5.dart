import 'dart:io';

void main(){
  List<String> vowels=["a","e","i","o","u","A","E","I","O","U"];
  print("Enter a String:");
  String str=stdin.readLineSync()!;
  List<String>characters=str.split("");
  int count = characters.fold(0, (acc,char){
    return vowels.contains(char)?acc+1:acc;
  });
  print("Number of vowels:$count");
}