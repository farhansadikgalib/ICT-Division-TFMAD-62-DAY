import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FirebaseRealtimeDataView extends StatelessWidget {


  final databaseRef =
      FirebaseDatabase.instance.reference().child('Registered Users Data');
  List<Map<dynamic, dynamic>> showData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Realtime Data View"),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: databaseRef.once(),
          builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
            if (snapshot.hasData) {
              showData.clear();
              Map<dynamic, dynamic> values = snapshot.data!.value;
              values.forEach((key, value) {
                showData.add(value);
              });

              return new ListView.builder(
                  shrinkWrap: true,
                  itemCount: showData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text("User Name: " + showData[index]['name']),
                          Text("User email: " + showData[index]['email']),
                          Text("User phone: " + showData[index]['phone']),
                          Text("User address: " + showData[index]['address']),
                        ],
                      ),
                    );
                  });
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
