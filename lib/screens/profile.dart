import 'package:flutter/material.dart';
import 'package:hotel_app/components/sizedbox.dart';

import '../components/components.dart';
import '../constants/constis.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          'User Profile',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black45,
          ),
        ),
        actions: [
          Icon(
            Icons.notifications_none,
            color: Colors.black45,
          )
        ],
        leading: Icon(
          Icons.menu_outlined,
          color: Colors.black45,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/angela.png'),
            ),
            Text("Angela Yu", style: KAngela),
            SizedBoxes(h: 5),
            Text(" Chania, Platanias", style: KAngelaCh),
            SizedBoxes(h: 25),
            CardProfile(
              title: 'Edit Profile',
              icon: Icons.person,
            ),
            CardProfile(
              title: 'Change password',
              icon: Icons.password_outlined,
            ),
            CardProfile(
              title: 'BookMark',
              icon: Icons.bookmark,
            ),
            CardProfile(
              title: 'My Location',
              icon: Icons.location_on_rounded,
            ),
            CardProfile(
              title: 'Logout',
              icon: Icons.logout,
            ),
          ],
        ),
      ),
    );
  }
}
