
import 'package:bharat/IndianHeritage/IndianHeritages_Main.dart';
import 'package:bharat/model/destination.dart';
import 'package:flutter/material.dart';

class Navigates extends StatefulWidget {
  final Categories obj;
  const Navigates(this.obj);
  @override
  _NavigatesState createState() => _NavigatesState();
}

class _NavigatesState extends State<Navigates> with SingleTickerProviderStateMixin {

  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

       if("Indian Heritages"==widget.obj.c_name)
        {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => IndianHeritages()
              ),
            );
        }


  }

}



