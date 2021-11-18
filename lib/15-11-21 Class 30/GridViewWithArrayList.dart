import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewWithArrayList extends StatefulWidget {
  const GridViewWithArrayList({Key? key}) : super(key: key);

  @override
  _GridViewWithArrayListState createState() => _GridViewWithArrayListState();
}

class _GridViewWithArrayListState extends State<GridViewWithArrayList> {
  final List _items = [
    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg',
    'assets/four.jpg',
    'assets/five.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text("Home"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("assets/one.jpg"), fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.2)
                    ], begin: Alignment.bottomRight)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Ehoni Kinnum",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.grey[900]),
                      )),
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 30,),

            Expanded(
              child: GridView.count(crossAxisCount: 2,
                children: _items.map((allitems) => Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage(allitems),
                      fit: BoxFit.cover
                      )
                    ),

                    child: Transform.translate(offset: Offset(75, -75),
                      child: Icon(Icons.favorite),

                    ),


                  ),



                )).toList(),

              ),
            )






          ],
        ),
      )),
    );
  }
}
