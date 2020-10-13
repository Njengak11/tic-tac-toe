import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

List<String> displayExOh = [
  '','','','','','','','','',
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      
      body: GridView.builder(
        padding: EdgeInsets.fromLTRB(10, 200, 10, 0),
        itemCount: 9,
        gridDelegate: 
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
         itemBuilder: (BuildContext context, int index){
           return GestureDetector(
             onTap: (){
               _tapped(index);
             },
                        child: Container( 
               decoration: BoxDecoration(
                 border:Border.all(
                   color: Colors.grey[700]
                 )
               ),
               child: Center(
                child: Text(
                  displayExOh[index],style: TextStyle(
                    color:Colors.white,
                    fontSize: 40
                  ),
                ), 
               ),
             ),
           );
         }),
    );
  }

  void _tapped(int index){
   setState((){
   displayExOh[index] = 'X';
      });
   }
}


   
