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


      appBar: AppBar(


        leading: Icon(Icons.email),

        title: Text("Flutter Appbar"),
        centerTitle: true,

        actions: [

          Icon(Icons.print)
        ],






      ),

      body: Column(

        children: [

          SingleChildScrollView(

            scrollDirection: Axis.vertical,
            child: Column(

              children: [


                Text("Hi there!"),
                Text("Hi there!"),
                Text("Hi there!"),
                Text("Hi there!"),
                Text("Hi there!"),
                Text("Hi there!"),
                Text("Hi there!"),
                Text("Hi there!"),
                Text("Hi there!"),
                Text("Hi there!"),




              ],
            ),
          ),

          Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Fanta_logo_%282018%29.png/220px-Fanta_logo_%282018%29.png'),
          Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Mirinda_nigeria_plastic_bottle.JPG/150px-Mirinda_nigeria_plastic_bottle.JPG'),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(

              children: [

                Icon(Icons.add_comment_sharp),
                Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),              Icon(Icons.add_comment_sharp),


              ],

            ),
          )




        ],

      ),







    );
  }
}
