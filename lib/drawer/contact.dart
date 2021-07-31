import 'package:flutter/material.dart';  
class Contact extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
          title:Text("Contact us")  
      ),  
      body: Center(  
          child:Text("Email: bharatbramanti@gmail.com ",style: TextStyle(fontSize: 20),)  
          
      ),  
    );  
  }  
} 