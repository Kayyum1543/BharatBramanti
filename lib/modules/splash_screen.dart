import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'login_page.dart';



class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}):super(key: key);

  @override
  _SplashScreen createState()=>_SplashScreen();


}

class _SplashScreen extends State<SplashScreen> {

  @override
  void initState() {

    Future.delayed(Duration(seconds:5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));


    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Stack(
        children: <Widget>[


          Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                      backgroundImage: AssetImage('images/india2.jpg'


                      ),
                      radius: 120
                  ),


                  SizedBox(
                    height: 100,
                  ),

                  SpinKitRipple(color:Colors.grey[700]),


                ],
              )),


          Column(



            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 50, right: 50),
                child:Text(

                  "Bharat Bramanti",
                  style: new TextStyle(

                    color: Colors.grey[700],
                    fontSize: 24,
                    fontFamily:'Bungee',
                  ),

                ),

              ),
              SizedBox(
                height: 50,
              )







            ],
          )
        ],
      ),
    );
  }
}


