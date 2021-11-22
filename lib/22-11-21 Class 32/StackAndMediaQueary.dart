import 'package:flutter/material.dart';

class StackAndMediaQueary extends StatefulWidget {
  const StackAndMediaQueary({Key? key}) : super(key: key);

  @override
  _StackAndMediaQuearyState createState() => _StackAndMediaQuearyState();
}

class _StackAndMediaQuearyState extends State<StackAndMediaQueary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
        child: Stack(

            alignment: Alignment.center,
          overflow: Overflow.visible,
            children: [

            Card(
              color: Colors.cyan,
              elevation: 10,
              child: SizedBox(
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width/3,

              ),


            ),

            Positioned
              (
                child: CircleAvatar(radius: 75,backgroundColor: Colors.brown,))



          ],

        ),
      ),


    );
  }
}
