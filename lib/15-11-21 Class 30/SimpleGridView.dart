import 'package:flutter/material.dart';

class SimpleGridView extends StatefulWidget {
  const SimpleGridView({Key? key}) : super(key: key);

  @override
  _SimpleGridViewState createState() => _SimpleGridViewState();
}

class _SimpleGridViewState extends State<SimpleGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("GridView"),
        centerTitle: true,
      ),

      body: GridView.count(crossAxisCount:2 ,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        padding: EdgeInsets.all(20),

        children: [

          Card(
            color: Colors.lightGreen,
            elevation: 15,
            shadowColor: Colors.black,
            child: Icon(Icons.people),

          ),

          Card(
            elevation: 20,
            color: Colors.cyan,
            child: Icon(Icons.house),
          ),
          Container(
            color: Colors.blue,
            child: Icon(Icons.search),

          ),
          Container(
            color: Colors.grey,
            child: Icon(Icons.search),

          ),          Container(
            color: Colors.green,
            child: Icon(Icons.search),

          ),


          Container(
            color: Colors.purple,
            child: Icon(Icons.search),

          ),
          Container(
            color: Colors.blue,
            child: Icon(Icons.search),

          ),
          Container(
            color: Colors.grey,
            child: Icon(Icons.search),

          ),          Container(
            color: Colors.green,
            child: Icon(Icons.search),

          ),



        ],

      ),




    );
  }
}
