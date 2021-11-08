import 'dart:async';
import 'package:button_day_62/03-11-21%20&%2008-11-21%20Class%2026%20&%2027/RegistrationUI.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreenAgain extends StatefulWidget {
  const SplashScreenAgain({Key? key}) : super(key: key);

  @override
  _SplashScreenAgainState createState() => _SplashScreenAgainState();
}

class _SplashScreenAgainState extends State<SplashScreenAgain> {
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Timer(Duration(seconds: 3), ()=>Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>RegistrationUI()), (route) => false));
    
  
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.lightBlue,
      
      body: Center(
        child: Column(

          children: [

            SizedBox(height: 100,),

            Image.asset('assets/coke.png'),

            Spacer(),

            SpinKitCubeGrid(color: Colors.red),


            SizedBox(height: 100,),




          ],


        ),
      ),




    );
  }
}
