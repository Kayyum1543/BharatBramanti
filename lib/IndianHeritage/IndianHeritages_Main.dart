import 'package:bharat/IndianHeritage/splashscreen.dart';
import 'package:flutter/material.dart';


class IndianHeritages  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Splash_Screen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}

