import 'package:bharat/BrainBox/data/data.dart';
import 'package:bharat/BrainBox/models/tile.dart';
import 'package:bharat/BrainBox/utils/constants/strings.dart';
import 'package:bharat/BrainBox/views/game/widgets/gameOverView.dart';
import 'package:bharat/BrainBox/views/game/widgets/tileView.dart';
import 'package:flutter/material.dart';


class GameView extends StatefulWidget {
  final Function callbackMain;
  GameView({this.callbackMain});
  @override
  _GameViewState createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  List<TileModel> visiblePairs = [];
  List<TileModel> questionPairs = [];

  @override
  void initState() {
    super.initState();
    restart();
  }

  void restart() {
    /*
    pairs = theme == Strings.theme_mh_food
        ? getMhFoodPairs()
        : getCelebPairs(); // sab True
    */
        if(theme == Strings.theme_india_food) {pairs = getIndiaFoodPairs();}
        else if(theme == Strings.theme_trad_wear){pairs = getTradWearPairs();}
        else if(theme == Strings.theme_india_travel){pairs = getIndiaTravelPairs();}
        else{pairs = getMhFoodPairs();}// sab True
    pairs.shuffle();
    visiblePairs = pairs;
    viewPoints = 0;
    totalPoints = 0;
    flipCount = 30;
    allowClick = false;
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        hideAllPairs(visiblePairs); // sab false
        allowClick = true;
      });
    });
  }

  callbackGameView(List<TileModel> updatedVisiblePairs) {
    widget.callbackMain(false);
    setState(() {
      visiblePairs = updatedVisiblePairs;
    });
  }

  callbackFromGameOverView() {
    restart();
    widget.callbackMain(false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(

          child: Stack(
            children: <Widget>[
            AnimatedOpacity(
              opacity: (totalPoints == 800 || flipCount == 0) ? 0.3 : 1,
              duration: Duration(seconds: 1),


                    child: GridView(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        mainAxisSpacing: 5,
                        maxCrossAxisExtent: 100,
                      ),
                      children: List.generate(
                        visiblePairs.length,
                        (index) {
                          return TileView(
                            visiblePairs: visiblePairs,
                            callbackGameView: callbackGameView,
                            index: index,
                          );
                        },
                      ),
                    ),
                  ),



            totalPoints == 800 || flipCount == 0
                ? GameOverView(
                    callbackGameView: callbackFromGameOverView,
                  )
                : Container(),
          ],
        ),

    );
  }
}
