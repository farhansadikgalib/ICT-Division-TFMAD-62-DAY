
import 'package:button_day_62/03-11-21%20&%2008-11-21%20Class%2026%20&%2027/SplashScreen.dart';
import 'package:button_day_62/11-10-21%20Class%20-%2028/TextWithLibaray.dart';
import 'package:button_day_62/13-11-21%20Class%2029/ContactListWithListView.dart';
import 'package:button_day_62/15-11-21%20Class%2030/GridViewWithArrayList.dart';
import 'package:button_day_62/15-11-21%20Class%2030/SimpleGridView.dart';
import 'package:button_day_62/18-11-21%20Class%2031/Local%20Json.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ICT MAD 62',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: LocalJsonDataView()
    );
  }
}


