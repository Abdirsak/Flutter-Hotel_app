import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/screens/Login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isloading = false;
  register() async {
    try {
      isloading = true;
      setState(() {});
      var response = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text, password: password.text);
      print("Success");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
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
          "Registration",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 150, right: 10, left: 10),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "User Name",
                  hintStyle: TextStyle(fontSize: 23)),
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  hintStyle: TextStyle(fontSize: 23)),
              style: TextStyle(fontSize: 25),
              obscureText: true,
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
                        "Register",
                        style: TextStyle(fontSize: 30),
                      ),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () => register(),
              )),
        ]),
      ),
    );
  }
}
