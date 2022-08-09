// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pizzaville/screens/preview.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Form(
                    child: Column(
                      children: [
                        AutoSizeText(
                          'Log in to place your order',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                              fontSize: 17.0,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color.fromRGBO(229, 19, 32, 1),
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color.fromRGBO(229, 19, 32, 1),
                                width: 1.0,
                              ),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color.fromRGBO(229, 19, 32, 1),
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        TextFormField(
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              fontSize: 17.0,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color.fromRGBO(229, 19, 32, 1),
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color.fromRGBO(229, 19, 32, 1),
                                width: 1.0,
                              ),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color.fromRGBO(229, 19, 32, 1),
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            AutoSizeText(
                              'Forgot password?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Preview()));
                          },
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color.fromRGBO(229, 19, 32, 1),
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          color: Color.fromRGBO(229, 19, 32, 1),
                          minWidth: MediaQuery.of(context).size.width,
                          height: 50.0,
                          child: AutoSizeText(
                            'Log in',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AutoSizeText(
                              'Sign up ',
                              style: TextStyle(
                                color: Color.fromRGBO(229, 19, 32, 1),
                                fontSize: 18.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            AutoSizeText(
                              'to create an account',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 20.0,
                // ),
                // Row(
                //   children: [
                //     Container(
                //       width: 100,
                //       height: 100,
                //       decoration: BoxDecoration(
                //         color: Colors.white,
                //         // shape: BoxShape.circle,
                //         image: DecorationImage(
                //           image: AssetImage("assets/images/twitterflower.jpg"),
                //           fit: BoxFit.cover,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                // shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/twitterflower.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
