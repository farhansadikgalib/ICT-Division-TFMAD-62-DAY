import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoxPage extends StatefulWidget {
  const CoxPage({Key? key}) : super(key: key);

  @override
  _CoxPageState createState() => _CoxPageState();
}

class _CoxPageState extends State<CoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.orange,

      body: Center(
        child: Column(
mainAxisAlignment: MainAxisAlignment.center,
          children: [

            RaisedButton(onPressed: (){

            Navigator.pop(context);

            },child: Text("Back Button"),)


          ],

        ),
      ),

    );
  }
}
