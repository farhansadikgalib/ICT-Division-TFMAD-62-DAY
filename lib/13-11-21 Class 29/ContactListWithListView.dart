import 'package:flutter/material.dart';

import 'ContactLists Data.dart';

class ContactListWithListView extends StatefulWidget {
  const ContactListWithListView({Key? key}) : super(key: key);

  @override
  _ContactListWithListViewState createState() => _ContactListWithListViewState();
}

class _ContactListWithListViewState extends State<ContactListWithListView> {

  final List peopleList = [

    {
      "name": "Farhan",
      "phone": "01773076754",
    },
    {
      "name": "Somi",
      "phone": "643106341",
    },
    {
      "name": "Saad",
      "phone": "74441542152415",
    },
    {
      "name": "Faysal",
      "phone": "881444",
    },
    {
      "name": "Humayun",
      "phone": "0181410421",
    },
    {
      "name": "Saiful",
      "phone": "0185485415",
    },
    {
      "name": "Mustafa",
      "phone": "0195410410",
    },
    {
      "name": "Helal",
      "phone": "012358874",
    },
    {
      "name": "Mahmud",
      "phone": "01587418521",
    },

    {
      "name": "Farhan",
      "phone": "01773076754",
    },
    {
      "name": "Somi",
      "phone": "643106341",
    },
    {
      "name": "Saad",
      "phone": "74441542152415",
    },
    {
      "name": "Faysal",
      "phone": "881444",
    },
    {
      "name": "Humayun",
      "phone": "0181410421",
    },
    {
      "name": "Saiful",
      "phone": "0185485415",
    },
    {
      "name": "Mustafa",
      "phone": "0195410410",
    },
    {
      "name": "Helal",
      "phone": "012358874",
    },
    {
      "name": "Mahmud",
      "phone": "01587418521",
    },
    {
      "name": "Farhan",
      "phone": "01773076754",
    },
    {
      "name": "Somi",
      "phone": "643106341",
    },
    {
      "name": "Saad",
      "phone": "74441542152415",
    },
    {
      "name": "Faysal",
      "phone": "881444",
    },
    {
      "name": "Humayun",
      "phone": "0181410421",
    },
    {
      "name": "Saiful",
      "phone": "0185485415",
    },
    {
      "name": "Mustafa",
      "phone": "0195410410",
    },
    {
      "name": "Helal",
      "phone": "012358874",
    },
    {
      "name": "Mahmud",
      "phone": "01587418521",
    },


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Contacts List"),
        centerTitle: true,
      ),

      body: ListView.builder(itemCount: peopleList.length,
      itemBuilder: (BuildContext context,int index){
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(

                child: Text(peopleList[index]["name"][0]),
              ),
              title: Text(peopleList[index]["name"]),
              subtitle: Text(peopleList[index]["phone"]),
              
              onTap: (){
                
                Route route = MaterialPageRoute(builder: (context)=> ContactViewWithArraysData(peopleList[index]));
                Navigator.push(context, route);
              },


            )

          ],

        );


      },

      ),



    );
  }
}
