// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pizzaville/screens/loginscreen.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void navigatetoLogin() {
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
  }

  @override
  void initState() {
    super.initState();
    //navigatetoLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(229, 19, 32, 1),
        child: Center(
          child: TextButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => LoginScreen())),
            child: AutoSizeText(
              'Pizzaville',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
