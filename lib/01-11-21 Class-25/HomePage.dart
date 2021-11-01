import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.purpleAccent,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text("Hi There!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900),),
            Text("You're Too Late to come here!"),

          ],


        ),
      ),

    );
  }
}
