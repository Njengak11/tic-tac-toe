import 'package:flutter/material.dart';
import 'package:tic_tac_toe/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

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
        primaryColor: Colors.grey[800]
      ),
      home: IntroScreen(),
    );
  }
}

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey[800],
      appBar: AppBar(
        
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('TIC-TAC-TOE',
           style:GoogleFonts.pressStart2p(
         color: Colors.white,
         fontSize: 30
       )
          ),
          Center(
            child: ButtonTheme(
              height: 80,
              minWidth: 200,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: Colors.white,
                onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => HomePage()
                  ));
                },
                child: Text('START',
                 style:GoogleFonts.pressStart2p(
         color: Colors.black,
         fontSize: 20
       )
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


  
  
  