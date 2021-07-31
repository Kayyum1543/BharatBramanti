import 'dart:math';

import 'package:bharat/BrainBox/data/data.dart';
import 'package:bharat/BrainBox/models/tile.dart';
import 'package:bharat/BrainBox/utils/constants/strings.dart';
import 'package:flutter/material.dart';


class TileView extends StatefulWidget {
  final int index;
  final List<TileModel> visiblePairs;
  final Function callbackGameView;

  TileView({
    this.index,
    this.visiblePairs,
    this.callbackGameView,
  });

  @override
  _TileViewState createState() => _TileViewState();
}

class _TileViewState extends State<TileView> {
  @override
  Widget build(BuildContext context) {
    TileModel currentTile = widget.visiblePairs[widget.index];

    return InkWell(
      customBorder: new CircleBorder(),
      onTap: () {
        if (allowClick) {
          // open Card
          setState(() {
            currentTile.setIsSelected(true);
          });
          // One Card opened
          if (selectedImagePath.length != 0 &&
              selectedImageIndex != widget.index) {
            allowClick = false;
            flipCount = max(flipCount - 2, 0);
            Future.delayed(const Duration(seconds: 1), () {
              allowClick = true;
              // Matched
              if ((theme == Strings.theme_india_food &&
                      selectedImagePath == currentTile.imagePath) ||
                  //check for last number in the name for "Desh Rangila" theme
                  (theme == Strings.theme_trad_wear &&
                      selectedImagePath.substring(selectedImagePath.length - 5,
                              selectedImagePath.length - 4) ==
                          currentTile.imagePath.substring(
                              currentTile.imagePath.length - 5,
                              currentTile.imagePath.length - 4)) ||
                  (theme == Strings.theme_india_travel &&
                      selectedImagePath == currentTile.imagePath)||
                    (theme == Strings.theme_mh_food &&
                      selectedImagePath == currentTile.imagePath)) {
                totalPoints += 100;
                viewPoints += 100;
                widget.visiblePairs[selectedImageIndex].setIsMatched(true);
                currentTile.setIsMatched(true);
              }
              //Not Matched
              else {
                viewPoints = max(0, viewPoints - 10);
                widget.visiblePairs[selectedImageIndex].setIsSelected(false);
                currentTile.setIsSelected(false);
              }
              // Callback for the change happened after "Future"
              widget.callbackGameView(widget.visiblePairs);
              selectedImagePath = "";
            });
          }
          // No card Open
          else {
            selectedImagePath = currentTile.imagePath;
            selectedImageIndex = widget.index;
          }
          if (totalPoints == 800 || flipCount == 0) allowClick = false;
        }
      },
      child: currentTile.isMatched
          ? Container()
          : Container(
              //color: Colors.black26,
              margin: EdgeInsets.all(5.0),

                child: ClipOval(
                  child: Image.asset(
                    currentTile.isSelected
                        ? currentTile.imagePath
                        : hideImagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

    );
  }
}
