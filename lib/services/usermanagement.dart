import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

class UserManagement{
  storeNewUser(user, context) {
  FirebaseFirestore.instance.collection('/users').add({
    'email':user._email,
    'uid':user._password,


  }).then((value) {






    Navigator.of(context).pop();
    Navigator.of(context).pushReplacementNamed('/loginpage');

   }).catchError((e){
     print(e);
   });
    
    
  }
  
  
}