import 'package:flutter/material.dart';
import 'package:getwidget/components/appbar/gf_appbar.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class Frontend_UI extends StatefulWidget {
  const Frontend_UI({Key? key}) : super(key: key);

  @override
  _Frontend_UIState createState() => _Frontend_UIState();
}

class _Frontend_UIState extends State<Frontend_UI> {

  final List<String> imageList = [
    "assets/one.jpg",
    "assets/two.jpg",
    "assets/three.jpg",
    "assets/four.jpg",
    "assets/five.jpg",
    "assets/coke.png",
  ];




  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) =>
      new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an App'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text(
              'No',
              style: TextStyle(color: Colors.green[800]),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text(
              'Yes',
              style: TextStyle(color: Colors.red[800]),
            ),
          ),
        ],
      ),
    )) ?? false;
  }





  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: Colors.grey,


        appBar: GFAppBar(
          title: Text("UI with GETWIDGET"),
          centerTitle: true,
        ),


        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              GFCarousel(

                scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 2),


                  items: imageList.map((item) => Container(
                    margin: EdgeInsets.all(15),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage(item),
                      fit: BoxFit.cover
                      )

                    ),

                  )).toList()



              )


            ],

          ),
        ),




      ),
    );
  }
}
