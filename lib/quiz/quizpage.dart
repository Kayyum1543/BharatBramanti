import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:bharat/quiz/resultpage.dart';

class getjson extends StatelessWidget {
  // accept the langname as a parameter

  String langname;
  getjson(this.langname);
  String assettoload;

  // a function
  // sets the asset to a particular JSON file
  // and opens the JSON
  setasset() {
    if (langname == "Andra Pradesh") {
      assettoload = "assets/andhra_pradesh.json";
    } else if (langname == "Arunachal Pradesh") {
      assettoload = "assets/arunachal pradesh.json";
    } else if (langname == "Assam") {
      assettoload = "assets/assam.json";
    } else if (langname == "Bihar") {
      assettoload = "assets/bihar.json";
    } else if (langname == "Chhattisgarh") {
      assettoload = "assets/chattisgarh.json";
    }  else if (langname == "Goa") {
      assettoload = "assets/goa.json";
    } else if (langname == "Gujrat") {
      assettoload = "assets/gujrat.json";
    } else if (langname == "Harayana") {
      assettoload = "assets/harayana.json";
    }  else if (langname == "Himachal Pradesh") {
      assettoload = "assets/himachal_pradesh.json";
    } else if (langname == "Jharkhand") {
      assettoload = "assets/jharkhand.json";
    } else if (langname == "Karnataka") {
      assettoload = "assets/karnataka.json";
    } else if (langname == "Kerala") {
      assettoload = "assets/kerala.json";
    }  else if (langname == "Madhya Pradesh") {
      assettoload = "assets/mp.json";
    } else if (langname == "Maharashtra") {
      assettoload = "assets/maharashtra.json";
    } else if (langname == "Manipur") {
      assettoload = "assets/manipur.json";
    } else if (langname == "Meghalaya") {
      assettoload = "assets/meghalaya.json";
    } else if (langname == "Mizoram") {
      assettoload = "assets/mizoram.json";
    } else if (langname == "Nagaland") {
      assettoload = "assets/nagaland.json";
    } else if (langname == "Odisha") {
      assettoload = "assets/odisha.json";
    } else if (langname == "Pujab") {
      assettoload = "assets/punjab.json";
    } else if (langname == "Rajasthan") {
      assettoload = "assets/rajasthan.json";
    } else if (langname == "Sikkim") {
      assettoload = "assets/sikkim.json";
    } else if (langname == "Tamil Nadu") {
      assettoload = "assets/tamil_nadu.json";
    } else if (langname == "Tripura") {
      assettoload = "assets/tripura.json";
    } else if (langname == "Uttar Pradesh") {
      assettoload = "assets/uttar_pradesh.json";
    } else if (langname == "Uttarakhand") {
      assettoload = "assets/uttarakhand.json";
    } else if (langname == "West Bengal") {
      assettoload = "assets/west_bengal.json";
    } else if (langname == "Andaman & Nicobar") {
      assettoload = "assets/andaman_nicobar.json";
    } else if (langname == "Chandigarh") {
      assettoload = "assets/chandigarh.json";
    } else if (langname == "Daman & Diu") {
      assettoload = "assets/daman_diu.json";
    }  else if (langname == "Delhi") {
      assettoload = "assets/delhi.json";
    } else if (langname == "Jammu and Kashmir") {
      assettoload = "assets/jammu and kashmir.json";
    } else if (langname == "Lakshdweep") {
      assettoload = "assets/lakshdweep.json";
    } else if (langname == "Puducherry") {
      assettoload = "assets/puducherry.json";
    } else  {
      assettoload = "assets/ladakh.json";
    }
  }

  @override
  Widget build(BuildContext context) {
    // this function is called before the build so that
    // the string assettoload is avialable to the DefaultAssetBuilder
    setasset();
    // and now we return the FutureBuilder to load and decode JSON
    return FutureBuilder(
      future:
          DefaultAssetBundle.of(context).loadString(assettoload, cache: false),
      builder: (context, snapshot) {
        List mydata = json.decode(snapshot.data.toString());
        if (mydata == null) {
          return Scaffold(
            body: Center(
              child: Text(
                "Loading",
              ),
            ),
          );
        } else {
          return quizpage(mydata: mydata);
        }
      },
    );
  }
}

class quizpage extends StatefulWidget {
  final List mydata;

  quizpage({Key key, @required this.mydata}) : super(key: key);
  @override
  _quizpageState createState() => _quizpageState(mydata);
}

class _quizpageState extends State<quizpage> {
  final List mydata;
  _quizpageState(this.mydata);

  Color colortoshow = Colors.indigoAccent;
  Color right = Colors.green;
  Color wrong = Colors.red;
  int marks = 0;
  int i = 1;
  bool disableAnswer = false;
  // extra varibale to iterate
  int j = 1;
  int timer = 30;
  String showtimer = "30";
  var random_array;

  Map<String, Color> btncolor = {
    "a": Colors.indigoAccent,
    "b": Colors.indigoAccent,
    "c": Colors.indigoAccent,
    "d": Colors.indigoAccent,
  };

  bool canceltimer = false;

  // code inserted for choosing questions randomly
  // to create the array elements randomly use the dart:math module
  // -----     CODE TO GENERATE ARRAY RANDOMLY

  genrandomarray(){
    var distinctIds = [];
    var rand = new Random();
      for (int i = 0; ;) {
      distinctIds.add(rand.nextInt(25));
        random_array = distinctIds.toSet().toList();
        if(random_array.length < 25){
          continue;
        }else{
          break;
        }
      }
      print(random_array);
  }

  //   var random_array;
  //   var distinctIds = [];
  //   var rand = new Random();
  //     for (int i = 0; ;) {
  //     distinctIds.add(rand.nextInt(10));
  //       random_array = distinctIds.toSet().toList();
  //       if(random_array.length < 10){
  //         continue;
  //       }else{
  //         break;
  //       }
  //     }
  //   print(random_array);

  // ----- END OF CODE
  // var random_array = [1, 6, 7, 2, 4, 10, 8, 3, 9, 5];

  // overriding the initstate function to start timer as this screen is created
  @override
  void initState() {
    starttimer();
    genrandomarray();
    super.initState();
  }

  // overriding the setstate function to be called only if mounted
  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          nextquestion();
        } else if (canceltimer == true) {
          t.cancel();
        } else {
          timer = timer - 1;
        }
        showtimer = timer.toString();
      });
    });
  }

  void nextquestion() {
    canceltimer = false;
    timer = 30;
    setState(() {
      if (j < 25) {
        i = random_array[j];
        j++;
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => resultpage(marks: marks),
        ));
      }
      btncolor["a"] = Colors.indigoAccent;
      btncolor["b"] = Colors.indigoAccent;
      btncolor["c"] = Colors.indigoAccent;
      btncolor["d"] = Colors.indigoAccent;
      disableAnswer = false;
    });
    starttimer();
  }

  void checkanswer(String k) {
    
    // in the previous version this was
    // mydata[2]["1"] == mydata[1]["1"][k]
    // which i forgot to change
    // so nake sure that this is now corrected
    if (mydata[2][i.toString()] == mydata[1][i.toString()][k]) {
      // just a print sattement to check the correct working
      // debugPrint(mydata[2][i.toString()] + " is equal to " + mydata[1][i.toString()][k]);
      marks = marks + 5;
      // changing the color variable to be green
      colortoshow = right;
    } else {
      // just a print sattement to check the correct working
      // debugPrint(mydata[2]["1"] + " is equal to " + mydata[1]["1"][k]);
      colortoshow = wrong;
    }
    setState(() {
      // applying the changed color to the particular button that was selected
      btncolor[k] = colortoshow;
      canceltimer = true;
      disableAnswer = true;
    });
    // nextquestion();
    // changed timer duration to 1 second
    Timer(Duration(seconds: 2), nextquestion);
  }

  Widget choicebutton(String k) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        onPressed: () => checkanswer(k),
        child: Text(
          mydata[1][i.toString()][k],
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Alike",
            fontSize: 20.0,
          ),
          maxLines: 1,
        ),
        color: btncolor[k],
        splashColor: Colors.indigo[700],
        highlightColor: Colors.indigo[700],
        minWidth: 200.0,
        height: 45.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return WillPopScope(
      onWillPop: () {
        return showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(
                    "Quiz",

                  ),
                  content: Text("You Can't Go Back At This Stage."),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Ok',
                      ),
                    )
                  ],
                ));
      },
      child: Scaffold(
        body: Column(
          children: <Widget>[
            /*Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [const Color(0xFF5032b6), const Color(0xFFb765d3),],
                  //begin: Alignment.centerLeft,
                  center: Alignment(-1.0, -1.0),
                  radius: 1.0,
                  //tileMode: TileMode.repeated,
                ),
              ),
            ),*/
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [const Color(0xFF5032b6), const Color(0xFFb765d3),],
                    //begin: Alignment.centerLeft,
                    center: Alignment(-1.0, -1.0),
                    radius: 1.0,
                    //tileMode: TileMode.repeated,
                  ),
                ),
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  mydata[0][i.toString()],
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Times New Roman",
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 6,
                child: AbsorbPointer(
                  absorbing: disableAnswer,
                    child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        choicebutton('a'),
                        choicebutton('b'),
                        choicebutton('c'),
                        choicebutton('d'),
                      ],
                    ),
                  ),
                ),
              ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topCenter,
                child: Center(
                  child: Text(
                    showtimer,
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
