
import 'package:bharat/BrainBox/BrainBox_main.dart';
import 'package:bharat/IndianHeritage/IndianHeritages_Main.dart';
import 'package:bharat/drawer/main_drawer.dart';
import 'package:bharat/model/destination.dart';
import 'package:bharat/model/detailspage.dart';
import 'package:bharat/quiz/splash.dart';
import 'package:bharat/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:bharat/screens/quiz/quiz_screen.dart';
class Bhramanti extends StatefulWidget {
  @override
  _BhramantiState createState() => _BhramantiState();
}

class _BhramantiState extends State<Bhramanti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[50],
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        elevation: 50,
        title: Text(
          "Where Do You Want To Go Today?",
          style: TextStyle(
              color: Colors.orange[200],
              fontSize: 19,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ),
      drawer: MainDrawer(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                "https://st.depositphotos.com/1637553/2286/i/950/depositphotos_22866368-stock-photo-india.jpg",
                height: 225,
                width: 600,
                fit: BoxFit.fill),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(children: [
                Expanded(
                  child: Text(
                    "By Category",
                    style: TextStyle(
                      color: Colors.brown[900],
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.lime[900],
                    fontSize: 15,
                  ),
                ),
              ]),
            ),
            Container(
              height: 60,
              width: 600,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.brown[700],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(categoryList[index].name,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange[200])),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(children: [
                Expanded(
                  child: Text(
                    "Must visit destination",
                    style: TextStyle(
                      color: Colors.brown[900],
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.lime[900],
                    fontSize: 15,
                  ),
                ),
              ]),
            ),
            Container(
              height: 150,
              width: 600,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: destinationList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      Details(destinationList[index])),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 115,
                              width: 150,
                              child: Image.network(destinationList[index].image,
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Text(
                          destinationList[index].name,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.brown[900]),
                        ),
                      ],
                    );
                  }),
            ),

            /**********/
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(children: [
                Expanded(
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.brown[900],
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              height: 150,
              width: 600,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute( builder: (context) {
                              // builder: (_) =>// Details(destinationList[index])
                              // Navigates(categoriesList[index])
                              // IndianHeritages()
                              // Categories(categoriesList[index].c_method+());
                              switch (categoriesList[index].c_name) {
                                case 'Indian Heritages':
                                      return IndianHeritages();
                                      break;
                                case 'States':
                                      return //CategoryTwo()
                                         IndianHeritages();
                                      break;
                                case 'Union Territories':
                                      return //CategoryThree()
                                      IndianHeritages();
                                      break;

                                default:
                                       return //CategoryOne();
                                       IndianHeritages();
                              }
                            }
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 115,
                              width: 150,
                              child: Image.network(categoriesList[index].c_image,
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Text(
                          categoriesList[index].c_name,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.brown[900]),
                        ),
                      ],
                    );
                  }),
            ),

            // Games
            /**********/
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(children: [
                Expanded(
                  child: Text(
                    "Game House",
                    style: TextStyle(
                      color: Colors.brown[900],
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              height: 150,
              width: 600,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: gameList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute( builder: (context) {
                              switch (gameList[index].g_name) {
                                case 'Brain Box':
                                  return BrainBox();
                                  break;
                                case 'Quiz Star':
                                  return //CategoryTwo()
                                  WelcomeScreen();

                                default:
                                  return //CategoryOne();
                                    BrainBox();
                              }
                            }
                            ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 115,
                              width: 150,
                              child: Image.network(gameList[index].g_image,
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Text(
                          gameList[index].g_name,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.brown[900]),
                        ),
                      ],
                    );
                  }),
            ),
/*



            /*******/
            Container(
              height: 600,
              width: 400,
              child: GridView.builder(
                  reverse: true,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: destinationList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 120,
                            //width: 170,
                            child: Image.network(categoriesList[index].c_image,
                                fit: BoxFit.fill),
                          ),
                        ),
                        Text(
                          categoriesList[index].c_name,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.brown[900],
                              fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (_) =>
                              s if("Indian Heritages"==categoriesList[index].c_name)
                                    {
                                   // Navigates(categoriesList[index])
                                    IndianHeritages()
                                    }

                              ),
                            );
                          },
                    )

                    ]);
                  }),

            ),


            */


            SizedBox(height: 20),


          ],
        ),
      ),
    );
  }
}


