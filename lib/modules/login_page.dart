import 'package:bharat/modules/reset.dart';
import 'package:bharat/modules/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  String _email1,_password1;
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

        child : Stack(
        children: <Widget>[


          Center(
            child:Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    SizedBox(
                      height: 70,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/namaste.webp'



                      ),
                      backgroundColor: Colors.brown[700],
                      radius: 70,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Time to Explore, let's Log in",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(left: 40, right: 40),
                      child: TextFormField(
                        style: TextStyle(fontSize: 16, color:Colors.brown[700]),
                        onChanged: (value){
                          setState((){

                            _email1=value.trim();

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

                            borderSide: BorderSide(color:Colors.brown[700]),
                          ),
                        ),
                        validator: (val){
                          if(!val.contains('@')){

                            return "Please Enter Valid Email Address";

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

                            _password1=value.trim();

                          }
                          );
                        },
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade700,
                          ),
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
                      height: 12,
                    ),
                    TextButton(
                      child: Text("Forgot Password?",
                        style: TextStyle(
                            color: Colors.brown[700], fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)
                        {
                          return Reset();


                        }));



                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 40, right: 40),
                      child: FlatButton(
                        color: Colors.brown[700],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {
                          validate();
                          if(_email1!=null && _password1 != null  && _password1.length>=8  && _password1.length<=16)
                          {
                            FirebaseAuth.instance
                                .signInWithEmailAndPassword(email: _email1, password: _password1)

                                .then((user) {
                              Navigator.of(context).pushReplacementNamed('/bramanti');
                            }).catchError((e){
                              



                            });



                          }

                        },
                        child: Text(
                          "LOG IN",
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
                          "It's your first time here?",
                          style: TextStyle(color:Colors.black54),
                        ),

                        TextButton(child :Text("Signup",
                          style: TextStyle(color:Colors.brown[700],fontWeight: FontWeight.bold),),

                          onPressed: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context)
                            {
                              return SignUp();


                            }));



                          },

                        )


                      ],
                    ),

                  ],
                )

      )
      )
        ],
      ),
      )
    );

  }




}








