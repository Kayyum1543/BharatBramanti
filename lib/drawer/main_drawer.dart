import 'package:bharat/BrainBox/data/data.dart';
import 'package:flutter/material.dart';
import 'package:bharat/modules/login_page.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Drawer(
     child: Container(



      child:new ListView(


        children: <Widget>[

          new UserAccountsDrawerHeader(
            accountName: new Text("Kayyum Subhedar"),
            accountEmail: new Text("kayyumsubhedar1@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              child:new Text("K"),
                backgroundColor: Colors.white,




            ),
          ),
              new ListTile(
            title:new Text("Contact us"),
            trailing: new Icon(Icons.arrow_upward),
            onTap:()=>Navigator.of(context).pushNamed('/contact'),
          ),
          new ListTile(
            title:new Text("Terms and Conditions"),
            trailing: new Icon(Icons.arrow_upward),
          ),
           new ListTile(
            title:new Text("Privacy Policy"),
            trailing: new Icon(Icons.arrow_upward),
          ),
           new ListTile(
            title:new Text("About"),
            trailing: 
            new Icon(Icons.arrow_upward),
            onTap:()=> Navigator.of(context).pushNamed('/about')
          ),
           new ListTile(
            title:new Text("Logout"),
            trailing: new Icon(Icons.arrow_upward),
            onTap:()=>Navigator.of(context).pushNamed('/loginpage'),

          ),
          

          new ListTile(
            title:new Text("Close"),
            trailing: new Icon(Icons.close),
            onTap:()=>Navigator.of(context).pop(),
          ),
        ],
      )
    )
    );
  }



}

