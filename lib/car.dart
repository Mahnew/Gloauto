import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
void main() => runApp(Mycar());

class Mycar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Car",
        home:Scaffold( bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blueAccent,
          items: <Widget>[
            Icon(Icons.person, size: 30),
            Icon(Icons.calendar_today, size: 30),
            Icon(Icons.drive_eta, size: 30),
            Icon(Icons.local_phone, size: 30),
          ],
          onTap: (index) {
            //Handle button tap
          },
        ),
          body: Container(color: Colors.blueAccent),)
    );
  }
}
