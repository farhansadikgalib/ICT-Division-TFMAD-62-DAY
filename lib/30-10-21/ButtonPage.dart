import 'package:button_day_62/30-10-21/CoxPage.dart';
import 'package:button_day_62/30-10-21/HomePage.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Center(
        child: Column(


          children: [

            RaisedButton(onPressed: (){

              // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));


              Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },child: Text("HomePage"),),

            SizedBox(height: 30,),

            RaisedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>CoxPage()));


            },child: Text("Dashboard"),),

          ],


        ),
      ),


    );
  }
}
