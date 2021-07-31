import 'package:flutter/material.dart';
import 'package:bharat/BrainBox/utils/config/theme.dart';
import 'package:bharat/BrainBox/views/home/brainBox_homePage.dart';

class BrainBox  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: gameTheme,
      home: HomePage(),
    );
  }
}