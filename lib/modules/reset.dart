
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Reset extends StatefulWidget {
  @override
  _Reset createState() => _Reset();
}
class _Reset extends State<Reset> {
  String _email2;
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
      body: Stack(
        children: <Widget>[


          Center(
            child:Form(
              key: formkey,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[


                    CircleAvatar(
                      backgroundImage: AssetImage('images/namaste.webp'



                      ),
                      backgroundColor: Colors.brown[700],
                      radius: 70,
                    ),



                    SizedBox(
                      height: 16,
                    ),


                    Container(
                      height: 50,
                      margin: EdgeInsets.only(left: 40, right: 40),
                      child: TextFormField(
                        style: TextStyle(fontSize: 16, color: Colors.brown),
                        onChanged: (value){
                          setState((){

                            _email2=value.trim();

                          }
                          );
                        },

                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade700,
                          ),
                          filled: true,

                          enabledBorder: OutlineInputBorder(

                              borderSide: BorderSide(color:Colors.brown[700])),
                          focusedBorder: OutlineInputBorder(

                            borderSide: BorderSide(color: Colors.brown[700]),
                          ),
                        ),
                        validator: (val){
                          if(!val.contains('@')){

                            return "Please Enter valid Email.";

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
                          if(_email2.contains('@')) {



                            FirebaseAuth.instance.sendPasswordResetEmail(
                                email: _email2);


                            showDialog(
                                context:context,builder:(context)
                            {

                              return AlertDialog(title: Text("Reset Password"),
                                content:Text("Password reset link send succesfully to your email address if your email is registered."),
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
                        },
                        child: Text(
                          "Reset Password",
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


                  ],
                )




            )

    )
        ],
      ),
    );

  }

}








