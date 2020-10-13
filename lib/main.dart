import 'package:flutter/material.dart';
import 'package:tic_tac_toe/homepage.dart';

String title = "Tic Tac Toe";
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber
      ),
      home: HomePage(),
    );
  }
}


  
  
  