import 'package:flutter/material.dart';  
class About extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
          title:Text("About Us")  
      ),  
      body: Center(  
          child:Text("Bharat bhramanti is an application.With lots of historical spaces with attractive photos and videos.Also games like barin boc and quiz star which contain several themes like Khana khajana, Desh Rangila,Bharat safar,Mejwani,and quiz questions different states that will increse the interest and enthusiasm in student towards culture of India.",style: TextStyle(fontSize: 20),)  
      ),  
    );  
  }  
} 