import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/main.dart';
import 'package:hotel_app/screens/Registration.dart';
import 'package:hotel_app/screens/navigations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isloading = false;
  login() async {
    isloading = true;
    setState(() {});
    try {
      var response = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text, password: password.text);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RouteNavigation()));
    } catch (e) {
      log(e.toString());
    }
    isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 150, right: 10, left: 10),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Your Email",
                hintStyle: TextStyle(fontSize: 23),
              ),
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(fontSize: 23)),
              obscureText: true,
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                child: isloading
                    ? CircularProgressIndicator(
                        backgroundColor: Colors.white,
                      )
                    : Text(
                        "Login",
                        style: TextStyle(fontSize: 30),
                      ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () => login(),
              )),
          Container(
              child: TextButton(
                  child: Text(
                    "don't have any Account? Register now",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Register()))
                      })),
        ]),
      ),
    );
  }
}
