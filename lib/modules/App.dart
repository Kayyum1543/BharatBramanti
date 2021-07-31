import 'package:bharat/BharatBharamantiHomepage.dart';
import 'package:bharat/modules/login_page.dart';
import 'package:bharat/modules/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bharat/screens/quiz/quiz_screen.dart';
import 'package:bharat/drawer/about.dart';
import 'package:bharat/drawer/contact.dart';

import 'splash_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      title: "BharatBhraman",
      theme: ThemeData(
          primarySwatch: Colors.brown,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'LeonSans'),
      home: SplashScreen(),
      routes: <String,WidgetBuilder>
      {
        '/loginpage':(BuildContext context)=>new LoginPage(),
        '/signup':(BuildContext context)=>new SignUp(),
        '/splashscreen':(BuildContext context)=>new SplashScreen(),
        '/bramanti':(BuildContext context)=>new Bhramanti(),
        '/quiz':(BuildContext context)=>new QuizScreen(),
        '/about':(BuildContext context)=>new About(),
        '/contact':(BuildContext context)=>new Contact(),




      },
      debugShowCheckedModeBanner: false,
    );
  }
}
