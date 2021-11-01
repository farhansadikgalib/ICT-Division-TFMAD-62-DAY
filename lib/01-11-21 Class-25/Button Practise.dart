import 'package:button_day_62/01-11-21%20Class-25/Destination.dart';
import 'package:flutter/material.dart';

class ButtonAgain extends StatefulWidget {
  const ButtonAgain({Key? key}) : super(key: key);

  @override
  _ButtonAgainState createState() => _ButtonAgainState();
}

class _ButtonAgainState extends State<ButtonAgain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.lightGreenAccent,

      body: Column(

        children: [

          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Destination()));

          },child: Text("CTG"),)




        ],

      ),


    );
  }
}
