/*
   16. Write a program user enter the 5 subjects mark. You have to make a total and find the percentage.
   percentage > 75 you have to print “Distinction” percentage > 60 and percentage <= 75 you have to
   print “First class” percentage >50 and percentage <= 60 you have to print “Second class” percentage >
   35 and percentage <= 50 you have to print “Pass class” Otherwise print “Fail”
   */

   import 'dart:io';

   void main(){
    int s1,s2,s3,s4,s5,total;
    double per;

    print("Enter marks of subject 1..");
    s1=int.parse(stdin.readLineSync()!);
    print("Enter marks of subject 2..");
    s2=int.parse(stdin.readLineSync()!);
    print("Enter marks of subject 3..");
    s3=int.parse(stdin.readLineSync()!);
    print("Enter marks of subject 4..");
    s4=int.parse(stdin.readLineSync()!);
    print("Enter marks of subject 5..");
    s5=int.parse(stdin.readLineSync()!);

    total=s1+s2+s3+s4+s5;
    print("Total Marks=$total");
    per=total*100/500;
    print("Percentage = $per");

    {
      if(per > 75 && per <= 100){
        print("Distinction");
      }else if(per > 60 && per <= 75){
        print("First class");
      }else if(per > 50 && per <= 60){
        print("Second class");
      }else if(per > 35 && per <= 50){
        print("Pass class");
      }else{
        print("Fail");
      }
    }
    
   }