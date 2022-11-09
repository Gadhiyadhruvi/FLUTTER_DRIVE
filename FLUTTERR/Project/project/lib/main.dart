import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(children: [
          Container(
            alignment: Alignment.center,
              child: Text("WELCOME TO DELHI", style: TextStyle(fontSize: 35, color: Colors.blueAccent),),
        
          ),
          Container(
               child: Image.asset("assets/images/main.jpg")
          ),
        ],
              ),
        
        ),
    );
  }
}