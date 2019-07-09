import 'package:flutter/material.dart';

void main() => runApp(Register());

class Register extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xFFFB415B),
          fontFamily: "Ubuntu"
      ),
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget{
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{

  bool _isHidden = true;

  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.only(top: 60.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Register',
              style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico"
              ),
            ),
            SizedBox(height: 20.0,),
            buildTextField("Email"),
            SizedBox(height: 20.0,),
            buildTextField("Password"),
            SizedBox(height: 20.0,),
            buildTextField("First name"),
            SizedBox(height: 20.0,),
            buildTextField("Last name"),
            SizedBox(height: 20.0,),
            buildTextField("Telephone "),
            SizedBox(height: 50.0),
            buildButtonContainer(),
            SizedBox(height: 10.0,),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String hintText){
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: hintText == "Email" ? Icon(Icons.email) :   hintText == "Password" ? Icon(Icons.lock) : null ,
        suffixIcon: hintText == "Password" ? IconButton(
          onPressed: _toggleVisibility,
          icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ) : null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }

  Widget buildButtonContainer(){
    return Container(
      height: 56.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.0),
        gradient: LinearGradient(
            colors: [
              Color(0xFF66FFFF),
              Color(0xFF66CCFF)
            ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft
        ),
      ),
      child: Center(
        child: Text(
          "Register",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );

  }
}