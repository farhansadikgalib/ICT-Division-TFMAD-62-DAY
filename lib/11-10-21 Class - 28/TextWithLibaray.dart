import 'dart:developer';

import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

class TextWithLibrary extends StatefulWidget {
  const TextWithLibrary({Key? key}) : super(key: key);

  @override
  _TextWithLibraryState createState() => _TextWithLibraryState();
}

class _TextWithLibraryState extends State<TextWithLibrary> {

  bool checkboxSelected = false;
  bool switchSelected = false;
  bool radioSelected = false;
  bool iconSelected = false;

  double sliderValue = 0;



  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();


  _showSnackbar(){

    var _snackBar=  SnackBar(content: Text("Yeah! It's cool today."));
    _globalKey.currentState!.showSnackBar(_snackBar);

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.grey,

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              Expandable(

                primaryWidget: Container(
                  child: Text("Honey Bunny"),
                ),
                secondaryWidget: Column(
                  children: [

                    Text("You can click the button above to hire me. If you’d like to get in touch, feel free to say hello through any of the social links below"),
                    SizedBox(height: 20,),
                    Text("I am a student, software engineer, and volunteer currently living in Dhaka, Bangladesh. My interests range from technology to programming. I am also interested in web development, gaming, and innovation.")

                  ],

                ),
                showArrowIcon: true,
                centralizePrimaryWidget: true,
                arrowLocation: ArrowLocation.right,
                animationDuration: Duration(seconds: 2),
                elevation: 10,


              ),

              SizedBox(height:50 ,),

              GlowButton(child: Text("Glowing"), onPressed: (){},glowColor: Colors.cyan,color: Colors.cyan,),
              SizedBox(height: 15,),

              GlowIcon(Icons.eighteen_mp_sharp,color: Colors.orangeAccent,glowColor: Colors.orangeAccent,),

              SizedBox(height: 50,),

    Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    GlowButton(
    onPressed: _showSnackbar,
    color: Colors.cyan,
    child: Text('Glow'),
    ),
    SizedBox(height: 32),
    GlowCheckbox(
    value: checkboxSelected,
    enable: true,
    color: Colors.cyan,
    onChange: (bool value) {
    setState(() {
    checkboxSelected = !checkboxSelected;
    });
    },
    ),
    SizedBox(height: 32),
    GestureDetector(
    onTap: () {
    setState(() {
    iconSelected = !iconSelected;
    });
    },
    child: GlowIcon(
    iconSelected ? Icons.wb_cloudy : Icons.cloud_queue,
    color: Colors.cyan,
    glowColor: iconSelected ? Colors.cyan : Colors.transparent,
    size: 64,
    blurRadius: 9,
    ),
    ),
    SizedBox(height: 32),
    GlowText(
    'Glow Text',
    style: TextStyle(fontSize: 40, color: Colors.cyan),
    ),
    SizedBox(height: 32),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    GlowRadio<bool>(
    value: true,
    groupValue: radioSelected,
    color: Colors.cyan,
    onChange: (value) {
    setState(() {
    radioSelected = value;
    log(value.toString());
    });
    },
    ),
    SizedBox(width: 32),
    GlowRadio<bool>(
    value: false,
    color: Colors.cyan,
    groupValue: radioSelected,
    onChange: (value) {
    setState(() {
    radioSelected = value;
    log(value.toString());
    });
    },
    ),
    ],
    ),
    SizedBox(height: 32),
    GlowSwitch(
    onChanged: (value) {
    setState(() {
    switchSelected = value;
    });
    },
    value: switchSelected,
    activeColor: Colors.cyan.withOpacity(0.6),
    blurRadius: 4,
    ),
    SizedBox(height: 32),
    GlowLineProgress(
    blurRadius: 12,
    glowColor: Colors.cyan,
    )
    ],
    ),






            ],




          ),
        ),
      ),

    );
  }
}
