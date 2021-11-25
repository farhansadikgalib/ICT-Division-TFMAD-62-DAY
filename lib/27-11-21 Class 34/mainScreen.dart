import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:button_day_62/15-11-21%20Class%2030/GridViewWithArrayList.dart';
import 'package:button_day_62/18-11-21%20Class%2031/Local%20Json.dart';
import 'package:button_day_62/22-11-21%20Class%2032/StackAndMediaQueary.dart';
import 'package:button_day_62/24-11-21%20Class%2033/WeatherApp.dart';
import 'package:button_day_62/27-11-21%20Class%2034/frontend_UI.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var currentIndex = 2;

  List listOfContainers = [
    Frontend_UI(),
    WeatherAppWithAPI(),
    GridViewWithArrayList(),
    LocalJsonDataView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfContainers[currentIndex],
      bottomNavigationBar: BottomNavyBar(
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                activeColor: Colors.orange,
                inactiveColor: Colors.black54),
            BottomNavyBarItem(
                icon: Icon(Icons.dashboard_rounded),
                title: Text("Dashboard"),
                activeColor: Colors.orange,
                inactiveColor: Colors.black54),
            BottomNavyBarItem(
                icon: Icon(Icons.notifications),
                title: Text("Notifications"),
                activeColor: Colors.orange,
                inactiveColor: Colors.black54),
            BottomNavyBarItem(
                icon: Icon(Icons.person),
                title: Text("Profile"),
                activeColor: Colors.orange,
                inactiveColor: Colors.black54),
          ],
          selectedIndex: currentIndex,
          onItemSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          }),
    );
  }
}
