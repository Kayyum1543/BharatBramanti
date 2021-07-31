import 'package:flutter/material.dart';

final ThemeData gameTheme = ThemeData(
  textTheme: TextTheme(
    // Game Timer
    headline2: TextStyle(
      color: Colors.indigo,
      fontSize: 60.0,
      fontWeight: FontWeight.w800,
    ),
    // Scoreline
    headline3: TextStyle(
      color: Colors.white,
   ),
    headline4: TextStyle(
      color: Colors.black,
      fontSize: 28,
      fontWeight: FontWeight.w800,
    ),
    headline5: TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    // GameOver Buttons
    button: TextStyle(
      fontSize: 25.0,
      color: Colors.red[700],
      fontWeight: FontWeight.w800,
    ),
  ),
  appBarTheme: AppBarTheme(
    color: Color(0xfcdaf7a6),
    // color: Colors.lightBlueAccent,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    elevation: 0,
    textTheme: TextTheme(
      headline6 : TextStyle(
        fontFamily: "serif",
        fontWeight: FontWeight.w800,
        fontSize: 25.0,
        color: Colors.black,
        //color: Colors.white,
      ),
    ),
  ),
);
