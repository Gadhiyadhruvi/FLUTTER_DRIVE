import 'dart:io';
class sample{

late int num;
void input(){
  print("Enter Number..");
  num=int.parse(stdin.readLineSync()!);

}
void display(){
  print("num=$num");
}
}
void main(){
  var obj=new sample();
  obj.input();
  obj.display();
}