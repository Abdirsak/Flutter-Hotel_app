import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel_app/models/hotels.dart';
import 'package:hotel_app/screens/screens.dart';
import '../constants/constis.dart';

class RouteNavigation extends StatefulWidget {
  const RouteNavigation({Key? key}) : super(key: key);

  @override
  State<RouteNavigation> createState() => _RouteNavigationState();
}

class _RouteNavigationState extends State<RouteNavigation> {
  int currentIndex = 0;
  List screens = [
    HomeScreen(),
    DetailScreen(),
    Rooms(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: AppColors.kContainerIconsBackground,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 16,
        unselectedFontSize: 15,
        iconSize: 30,
        onTap: (int newValue) {
          setState(() {
            currentIndex = newValue;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_border_outlined,
            ),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message_outlined,
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
            ),
            label: 'Account',
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
