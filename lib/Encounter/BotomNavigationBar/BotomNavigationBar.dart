import 'package:flutter/material.dart';

import 'EncounterPage/Encounter.dart';
import 'MinePage/Mine.dart';

class BotomNavigationBar extends StatefulWidget {
  BotomNavigationBar({super.key});

  @override
  State<BotomNavigationBar> createState() => _BotomNavigationBarState();
}

class _BotomNavigationBarState extends State<BotomNavigationBar> {
  // int currentIndex = 0;
  int selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    EncounterPage(),
    MinePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
          borderRadius: BorderRadius.only(topLeft:  Radius.circular(16),topRight:  Radius.circular(16),),
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,size: 25,),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined,size: 25,),
              label: "Profile",
            ),
          ],
          onTap: _onItemTapped,
          elevation: 5,
          currentIndex: selectedIndex,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
