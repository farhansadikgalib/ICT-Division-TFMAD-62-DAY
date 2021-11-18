import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LocalJsonDataView extends StatefulWidget {
  const LocalJsonDataView({Key? key}) : super(key: key);

  @override
  _LocalJsonDataViewState createState() => _LocalJsonDataViewState();
}

class _LocalJsonDataViewState extends State<LocalJsonDataView> {
  late List readyData;
  late List unfilterData;

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/jsonData.json');

    setState(() {
      readyData = jsonDecode(jsonText);
    });

    this.unfilterData = readyData;

    return 'susscessfully get data';
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.loadJsonData();
  }

  searchBar(str) {
    var stringExist = str.length > 0 ? true : false;

    if (stringExist) {
      var filterData = [];

      for (int i = 0; i < unfilterData.length; i++) {
        String name = unfilterData[i]['name'].toUpperCase();
        if (name.contains(str.toUpperCase())) {
          filterData.add(unfilterData[i]);
        }

        setState(() {
          this.readyData = filterData;
        });
      }
    } else {
      setState(() {
        this.readyData = this.unfilterData;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List With Local Json Data"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search Contacts',
              icon: Icon(Icons.search),
            ),
            onChanged: (String str) {
              this.searchBar(str);
              print(str);
            },
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: readyData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Text(readyData[index]['name'][0]),
                          ),
                          title: Text(readyData[index]['name']),
                          subtitle: Text(readyData[index]['phone']),
                        )
                      ],
                    );
                  }))
        ],
      ),
    );
  }
}
