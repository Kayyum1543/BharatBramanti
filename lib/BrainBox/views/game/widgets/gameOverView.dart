import 'package:bharat/BrainBox/data/data.dart';
import 'package:bharat/BrainBox/utils/constants/colors.dart';
import 'package:bharat/BrainBox/utils/constants/strings.dart';
import 'package:bharat/BrainBox/views/home/brainBox_homePage.dart';
import 'package:flutter/material.dart';

class GameOverView extends StatelessWidget {
  final Function callbackGameView;
  GameOverView({this.callbackGameView});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: 330.0,
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        color: Color(0xFFD2D3E7),
        //Colors.lightBlueAccent[100],

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              (flipCount == 0 && totalPoints != 800)
                  ? Strings.game_over
                  : Strings.score + " : $viewPoints",
              style: TextStyle(
                fontSize: 35.0,
                fontFamily: Strings.font_family,
                color: (flipCount == 0 && totalPoints != 800)
                    ? MyColors.widgetColor[Strings.game_over]
                    : MyColors.widgetColor[Strings.score],
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                /*RaisedButton(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  color: Colors.white70,
                  onPressed: () {
                    callbackGameView();
                  },
                  child: Text(
                    Strings.restart,
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
                RaisedButton(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text(
                    Strings.return_home,
                    style: Theme.of(context).textTheme.button,
                  ),
                ),

                */
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // background color
                    primary: Colors.black54,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text( Strings.restart,),
                  onPressed: () {
                    callbackGameView();
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // background color
                    primary: Colors.orange,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text( Strings.return_home,),
                  onPressed: () {
                    Navigator.of(context).pop(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
