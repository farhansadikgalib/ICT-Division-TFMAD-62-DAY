import 'dart:async';
import 'package:button_day_62/01-11-21%20Class-25/HomePage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 5),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
            (route) => false));
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.cyan,

      body: Center(
        child: Column(

          children: [
            SizedBox(height: 50,),


            Image.asset('assets/coke.png',height: 250,width: 350,),

            Spacer(),

            CircularProgressIndicator(
              color: Colors.red,
            ),
            SizedBox(height: 50,),



          ],

        ),
      ),



    );
  }
}
