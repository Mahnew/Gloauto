import 'dart:async';

import 'package:gloauto/src/Constant.dart';
import 'package:gloauto/src/SplashScreen.dart';
import 'package:gloauto/src/ProfilePage.dart';



import 'package:flutter/material.dart';


main() {
  runApp(new MaterialApp(
    title: 'Fluter Profile Page',
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
        primaryColor: Color(0xff0082CD),

        primaryColorDark: Color(0xff0082CD)),
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      //SPLASH_SCREEN: (BuildContext context) => new MapScreen(),
      PROFILE: (BuildContext context) => new ProfilePage(),
    },
  ));
}