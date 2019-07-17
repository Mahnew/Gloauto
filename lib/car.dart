import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(Mycar());

class Mycar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Car",
        home: Scaffold(
          appBar: AppBar(
            title: Text("CAR LIST"),
          ),
          body: ListView(
            children: <Widget>[
              Image.network(
                  'https://www.gloautointernational.com/wp-content/uploads/2017/04/logo.png'),
              ListTile(
                leading: Image.network(
                    'https://img.kaidee.com/prd/20190706/348617419/b/684abac4-3db1-4990-91a5-b66e48655ee7.jpg',
                    fit: BoxFit.cover),
                title: Text("BMW"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              ListTile(
                leading: Image.network(
                    'https://img.kaidee.com/prd/20190706/348617419/b/684abac4-3db1-4990-91a5-b66e48655ee7.jpg',
                    fit: BoxFit.cover),
                title: Text("lamborghini"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              )
            ],
          ),
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.blueAccent,
            items: <Widget>[
              Icon(Icons.person, size: 15),
              Icon(Icons.calendar_today, size: 15),
              Icon(Icons.drive_eta, size: 15),
              Icon(Icons.local_phone, size: 15),
            ],
            onTap: (index) {
              //Handle button tap
            },
          ),
        ));
  }
}
