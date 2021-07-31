
import 'package:bharat/services/usermanagement.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
  String _email,_password,_confirmpassword;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void validate(){
    if(formkey.currentState.validate()){

      print("ok");

    }
    else
      {

        print("Error");
      }



  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,

      body:SingleChildScrollView(
        child: Stack(

        children: <Widget>[

          /*Text(
            "Welcome!",
            style: new TextStyle(
              color: Colors.blue,
              fontSize: 50,
              fontFamily:'Raleway',
            ),
          ),*/


          Center(
            child :Form(
              key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    SizedBox(
                      height:70,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/namaste.webp'



                      ),
                      backgroundColor: Colors.brown[700],
                      radius: 70
                    ),


                    SizedBox(
                      height: 10,
                    ),
                    Text(

                      "Time to Explore, let's Sign in",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),






                    Container(
                      height: 50,
                      margin: EdgeInsets.only(left: 40, right: 40),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(fontSize: 16, color:Colors.brown[700]),
                        onChanged: (value){
                          setState((){

                            _email=value.trim();

                          }
                          );
                        },
                        decoration: InputDecoration(
                          hintText: "Email",

                          filled: true,

                          enabledBorder: OutlineInputBorder(

                              borderSide: BorderSide(color: Colors.brown[700])),
                          focusedBorder: OutlineInputBorder(

                            borderSide: BorderSide(color: Colors.brown[700]),
                          ),
                        ),
                        validator: (val){
                          if(!val.contains('@')){

                            return "Please Enter valid Email";

                          }
                          else
                          {
                            return null;

                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(left: 40, right: 40),
                      child: TextFormField(
                        obscureText: true,
                        style: TextStyle(fontSize: 16, color:Colors.brown[700]),
                        onChanged: (value){
                          setState((){

                            _password=value.trim();

                          }
                          );
                        },
                        decoration: InputDecoration(
                          hintText: "Password",


                          filled: true,

                          enabledBorder: OutlineInputBorder(
                            
                            borderSide: BorderSide(color: Colors.brown[700]),
                          ),
                          focusedBorder: OutlineInputBorder(
                           
                            borderSide: BorderSide(color: Colors.brown[700]),
                          ),
                        ),
                        validator: (val){
                          if(val.length<8){

                            return "Password length should be 8 characters.";

                          }
                          else
                          {
                            return null;

                          }
                        },

                      ),
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Container(
                      height: 50,
                      margin: EdgeInsets.only(left: 40, right: 40),
                      child: TextFormField(
                        obscureText: true,
                        style: TextStyle(fontSize: 16, color: Colors.brown[700]),
                        onChanged: (value){
                          setState((){

                            _confirmpassword=value.trim();

                          }
                          );
                        },
                        decoration: InputDecoration(
                          hintText: "Confirm Password",


                          filled: true,

                          enabledBorder: OutlineInputBorder(

                            borderSide: BorderSide(color: Colors.brown[700]),
                          ),
                          focusedBorder: OutlineInputBorder(

                            borderSide: BorderSide(color:Colors.brown[700]),
                          ),
                        ),
                        validator: (val){
                          if(val.length<8){

                            return "Password length should be 8 characters or not match";

                          }
                          else
                          {
                            return null;

                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 40, right: 40),
                      child: RaisedButton(
                        color: Colors.brown[700],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {
                          validate();
                          if(_email!=null && _password != null && _confirmpassword!=null && _password.length>=8  && _password.length<=16)
                          {
                            if(_password==_confirmpassword)
                            {
                              FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password)
                                  .then((signedInuser)
                              {
                                UserManagement().storeNewUser(signedInuser,context);

                              }).catchError((e){
                                print(e);
                              });
                              showDialog(
                                  context:context,builder:(context)
                              {

                                return AlertDialog(title: Text("Sign in"),
                                  content:Text("Your account created Successfully.Please Log in."),
                                  actions: <Widget>[
                                    FlatButton(
                                      child:Text("Ok"),
                                      onPressed: (){
                                        Navigator.of(context).pushReplacementNamed('/loginpage');
                                      },
                                    )
                                  ],

                                );
                              });

                            }
                          }
                        },
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Already have an Account ?",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        TextButton(child :Text("Log in",
                          style: TextStyle(color:Colors.brown[700],fontWeight: FontWeight.bold),),

                          onPressed: ()
                          {
                            Navigator.of(context).pushNamed('/loginpage');




                          },

                        )
                      ],
                    ),

                  ],
                )


            ),
              )

        ],
      ),
      )
    );
  }






}








