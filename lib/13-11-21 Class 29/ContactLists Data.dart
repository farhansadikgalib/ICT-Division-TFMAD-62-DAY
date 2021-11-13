import 'package:flutter/material.dart';

class ContactViewWithArraysData extends StatefulWidget {


  var readylist;
  ContactViewWithArraysData(this.readylist);

  @override
  _ContactViewWithArraysDataState createState() => _ContactViewWithArraysDataState(this.readylist);
}

class _ContactViewWithArraysDataState extends State<ContactViewWithArraysData> {


  var useList;
  _ContactViewWithArraysDataState(this.useList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text("Name: ${useList["name"]}",style: TextStyle(fontSize: 30),),
            Text("Phone: ${useList["phone"]}"),



          ],

        ),
      ),

    );
  }
}
