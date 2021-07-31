import 'dart:math';

import 'package:bharat/quiz/quizpage.dart';
import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';


class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List<String> images = [
    "images/andra_pradesh.jpg",
    "images/arunachal2.jpg",
    "images/assam.jpg",
    "images/bihar.jpg",
    "images/chhattisgarh.jpg",
    "images/goa1.jpg",
    "images/gujrat.jpg",
    "images/harayana1.jpg",
    "images/himachal_pradesh.jpg",
    "images/jharkhand.jpg",
    "images/karnataka.jpg",
    "images/kerala.jpg",
    "images/madhya_pradesh.jpg",
    "images/maharashtra.jpg",
    "images/manipur.jpg",
    "images/meghalaya.jpg",
    "images/mizoram11.png",
    "images/nagaland.jpg",
    "images/odisha.jpg",
    "images/punjab1.jpg",
    "images/rajasthan1.jpg",
    "images/sikkim.jpg",
    "images/tamil_nadu.jpg",
    "images/telengana.jpg",
    "images/tripura.jpg",
    "images/uttar_pradesh.jpg",
    "images/uttarakhand.jpg",
    "images/west_bengal.jpg",
    "images/andaman_nicobar.jpg",
    "images/chandigarh.jpg",
    "images/daman.jpg",
    "images/delhi.jpg",
    "images/jammu_kashmir.jpg",
    "images/lakshadweep.jpg",
    "images/puducherry.jpg",
    "images/ladakh.jpg",
  ];


  Widget customcard(String langname , String image){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            // in changelog 1 we will pass the langname name to ther other widget class
            // this name will be used to open a particular JSON file 
            // for a particular language
            builder: (context) => getjson(langname),
          ));
        },
        child: Material(
          color: Colors.indigoAccent,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(150.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 220.0,
                      width: 220.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz",
          style: TextStyle(
            fontFamily: "Quando",
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Andra Pradesh", images[0]),
          customcard("Arunachal Pradesh", images[1]),
          customcard("Assam", images[2]),
          customcard("Bihar", images[3]),
          customcard("Chhattisgarh", images[4]),
          customcard("Goa", images[5]),
          customcard("Gujrat", images[6]),
          customcard("Harayana", images[7]),
          customcard("Himachal Pradesh", images[8]),
          customcard("Jharkhand", images[9]),
          customcard("Karnataka", images[10]),
          customcard("Kerala", images[11]),
          customcard("Madhya Pradesh", images[12]),
          customcard("Maharashtra", images[13]),
          customcard("Manipur", images[14]),
          customcard("Meghalaya", images[15]),
          customcard("Mizoram", images[16]),
          customcard("Nagaland", images[17]),
          customcard("Odisha", images[18]),
          customcard("Pujab", images[19]),
          customcard("Rajasthan", images[20]),
          customcard("Sikkim", images[21]),
          customcard("Tamil Nadu", images[22]),
          customcard("Telengaa", images[23]),
          customcard("Tripura", images[24]),
          customcard("Uttar Pradesh", images[25]),
          customcard("Uttarakhand", images[26]),
          customcard("West Bengal", images[27]),

          customcard("Andaman & Nicobar", images[28]),
          customcard("Chandigarh", images[29]),
          customcard("Daman & Diu", images[30]),
          customcard("Delhi", images[31]),
          customcard("Jammu and Kashmir", images[32]),
          customcard("Lakshdweep", images[33]),
          customcard("Puducherry", images[34]),
          customcard("Ladakh", images[35]),
        ],
      ),
    );
  }
}