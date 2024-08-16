import 'dart:io';
void main(){
  stdout.write("enter numbers:");
  int? num1=int.parse(stdin.readLineSync()!);

  while(num1!>0){
    int digit=num1!%10;
    print(digit);
    num1=(num1~/10)!;
    }
}