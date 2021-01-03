import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  @override
  _BottomnavState createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  @override
  Widget build(BuildContext context) {
    return ( Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.api),
              label: "add",
              backgroundColor: Colors.black
              ),

            BottomNavigationBarItem(
              icon: Icon(Icons.api),
              label: "add",
              backgroundColor: Colors.black
              ),


            BottomNavigationBarItem(
              icon: Icon(Icons.api),
              label: "add",
              backgroundColor: Colors.black
              ),

            BottomNavigationBarItem(
              icon: Icon(Icons.api),
              label: "add",
              backgroundColor: Colors.black
              )


          ],
        ),
    )
    );
    
  }
}
