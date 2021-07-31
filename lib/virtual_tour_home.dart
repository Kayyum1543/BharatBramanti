
import 'package:flutter/material.dart';
import 'package:video_player_360/video_player_360.dart';



class VirtualTour extends StatefulWidget {

  @override
  _VirtualTourState createState() => _VirtualTourState();
}

class _VirtualTourState extends State<VirtualTour> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Virtual Tour'),
        ),
        body:

       Column(children: <Widget>[
       Row(
       //ROW 1
       children: [
        Container(
          width: 400,
          height: 300,
          padding: new EdgeInsets.all(20.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.green,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.place_outlined, size: 60),
                  title: Text(
                      'Mumbai',
                      style: TextStyle(fontSize: 30.0)
                  ),
                  subtitle: Text(
                      'The Gateway of India is an arch monument built during the 20th century in Bombay, India.',
                      style: TextStyle(fontSize: 18.0)
                  ),
                ),
                ButtonBar(
                  children: <Widget>[

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent, //background color of button
                          side: BorderSide(width:3, color:Colors.brown), //border width and color
                          elevation: 3, //elevation of button
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(30)
                          ),
                          padding: EdgeInsets.all(20) //content padding inside button
                      ),
                      child: const Text('Ready > '),
                      onPressed: () async {
                        await VideoPlayer360.playVideoURL(
                     "https://github.com/Dhanashri-Borage/toycathon/blob/main/%F0%9F%8C%8D%20360%C2%B0%20Gateway%20Of%20India%20%26%20Taj%20Palace%20_%20Bombay%2C%20India%20%F0%9F%87%AE%F0%9F%87%B3%E3%80%90GoPro%20VR%20Travel%20_%20360%20Video%E3%80%91.mp4?raw=true");
                      },
                    ),

                  ],
                ),
              ],
            ),
          ),
        )

  ],
      ),
         Row(
           //ROW 2
           children: [
             Container(
               width: 400,
               height: 300,
               padding: new EdgeInsets.all(20.0),
               child: Card(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15.0),
                 ),
                 color: Colors.blueAccent,
                 elevation: 10,
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: <Widget>[
                     const ListTile(
                       leading: Icon(Icons.place_outlined, size: 60),
                       title: Text(
                           'Mysore',
                           style: TextStyle(fontSize: 30.0)
                       ),
                       subtitle: Text(
                           'Mysore Palace is a historical palace and the royal residence at Mysore in the Indian State of Karnataka.',
                           style: TextStyle(fontSize: 18.0)
                       ),
                     ),
                     ButtonBar(
                       children: <Widget>[


                         ElevatedButton(
                           style: ElevatedButton.styleFrom(
                               primary: Colors.pinkAccent, //background color of button
                               side: BorderSide(width:3, color:Colors.brown), //border width and color
                               elevation: 3, //elevation of button
                               shape: RoundedRectangleBorder( //to set border radius to button
                                   borderRadius: BorderRadius.circular(30)
                               ),
                               padding: EdgeInsets.all(20) //content padding inside button
                           ),
                           child: const Text('Ready > '),
                           onPressed: () async {
                             await VideoPlayer360.playVideoURL(
                                 "https://github.com/Dhanashri-Borage/toycathon/blob/main/%F0%9F%87%AE%F0%9F%87%B3%20360%C2%B0%20Inside%20Mysore%20Palace%20_%20Mysore%2C%20India.mp4?raw=true");

                           },
                         ),

                       ],
                     ),
                   ],
                 ),
               ),
             )

           ],
         ),
    ],
    ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}