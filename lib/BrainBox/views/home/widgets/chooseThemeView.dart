import 'package:flutter/material.dart';
import 'package:bharat/BrainBox/data/data.dart';
import 'package:bharat/BrainBox/utils/constants/colors.dart';
import 'package:bharat/BrainBox/utils/constants/strings.dart';
import 'package:bharat/BrainBox/views/game/gamePage.dart';
import 'package:bharat/BrainBox/views/home/widgets/customCardView.dart';

class ChooseThemeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CustomCardView(
            height: 75,
            width: width,
            backColor: Colors.black54,
            text: Strings.choose_theme,
            fontSize: 25.0,
            fontColor: MyColors.widgetColor[Strings.choose_theme],
          ),
          InkWell(
            onTap: () {
              theme = Strings.theme_india_food;
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => GamePage()));
            },
            child: CustomCardView(
              height: 100,
              width: width,
              //showTile: true,

              backColor: Color(0xFFE3EFDA),
              text: Strings.theme_india_food,
              fontColor: MyColors.widgetColor[Strings.theme_india_food],
            ),
          ),

          InkWell(
            onTap: () {
              theme = Strings.theme_trad_wear;
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => GamePage()));
            },
            child: CustomCardView(
              height: 100,
              width: width,
             // showTile: true,
              backColor: Color(0xFFE7D6EC),
             // tileColor: Colors.amber,
              text: Strings.theme_trad_wear,
              fontColor: MyColors.widgetColor[Strings.theme_trad_wear],
            ),
          ),
          InkWell(
            onTap: () {
              theme = Strings.theme_india_travel;
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => GamePage()));
            },
            child: CustomCardView(
              height: 100,
              width: width,
              //showTile: true,
              //tileColor: Colors.green,
              backColor: Color(0xFFC0DDE5),
              text: Strings.theme_india_travel,
              fontColor: MyColors.widgetColor[Strings.theme_india_travel],
            ),
          ),
          InkWell(
            onTap: () {
              theme = Strings.theme_mh_food;
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => GamePage()));
            },
            child: CustomCardView(
              height: 100,
              width: width,
              //showTile: true,
              //tileColor: Colors.green,
              backColor: Color(0xFFE7D4D1),
              text: Strings.theme_mh_food,
              fontColor: MyColors.widgetColor[Strings.theme_mh_food],

            ),
          ),
        ],
      ),
    );
  }
}
