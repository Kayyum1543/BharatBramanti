import 'dart:async';
import 'package:bharat/BrainBox/data/data.dart';
import 'package:bharat/BrainBox/utils/constants/colors.dart';
import 'package:bharat/BrainBox/utils/constants/strings.dart';
import 'package:bharat/BrainBox/views/game/widgets/gameView.dart';
import 'package:bharat/BrainBox/views/home/widgets/customCardView.dart';
import 'package:flutter/material.dart';


class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  callback(bool startGame) {
    setState(() {});
  }

  Timer _timer;
  int _start = 3;

  startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_start < 1) {
            timer.cancel();
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          Strings.app_name,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Strings.background_img_path),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              CustomCardView(
              height: 70,
              width: width,
              text: theme,
                 /*
                 if(theme == Strings.theme_india_food)
                 {
                 fontColor: MyColors.widgetColor[Strings.theme_india_food],
                 }
                 else if (theme == Strings.theme_trad_wear)
                 {
                     fontColor: MyColors.widgetColor[Strings.theme_trad_wear],
                 }
                else if (theme == Strings.theme_india_travel)
                {
                    fontColor: MyColors.widgetColor[Strings.theme_india_travel],
                }
                else{
                        fontColor: MyColors.widgetColor[Strings.theme_mh_food],
                 },
                */
                fontColor: theme == Strings.theme_india_food
                    ? MyColors.widgetColor[Strings.theme_india_food]
                    : MyColors.widgetColor[Strings.theme_trad_wear],


              ),
              SizedBox(height: 10),
              Expanded(
                child: _start != 0
                    ? Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent[500],
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          Strings.get_ready + "\n $_start",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          // Scoreline
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    "$viewPoints/" + Strings.max_points,
                                    style: Theme.of(context).textTheme.headline4,
                                  ),
                                  Text(
                                    Strings.points,
                                    style: Theme.of(context).textTheme.headline4,
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    "$flipCount",
                                    style: Theme.of(context).textTheme.headline4,
                                  ),
                                  Text(
                                    Strings.flips_left,
                                    style: Theme.of(context).textTheme.headline4,
                                  ),
                                ],
                              ),
                            ],
                          ),

                             GameView(
                                callbackMain: callback,
                              ),


                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
