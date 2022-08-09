// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pizzaville/screens/homepage.dart';

class Preview extends StatefulWidget {
  const Preview({Key? key}) : super(key: key);

  @override
  _PreviewState createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  @override
  Widget build(BuildContext context) {
    final devicewidth = MediaQuery.of(context).size.width;
    // final deviceheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 245, 245, 245),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'Hello,',
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      AutoSizeText(
                        'Joy',
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 13.0),
                  child: AutoSizeText(
                    'Welcome, what would you like to eat?',
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                Container(
                  width: devicewidth,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          imageContainer(devicewidth, 'Burger',
                              'assets/images/burger.jpg'),
                          imageContainer(
                              devicewidth, 'Pizza', 'assets/images/Pizza1.jpg')
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          imageContainer(devicewidth, 'Shawarma',
                              'assets/images/shawarma5.jpg'),
                          imageContainer(devicewidth, 'Hot dog',
                              'assets/images/hotdog.jpg')
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container imageContainer(
      double devicewidth, String imagename, String imagelink) {
    return Container(
      // width: devicewidth,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Container(
            // padding: EdgeInsets.all(5.0),
            width: devicewidth / 3.2,
            height: devicewidth / 3.2,
            child: Image(
              image: AssetImage(imagelink),
              fit: BoxFit.fill,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Homepage(
                            imagename: imagename,
                            imagelink: imagelink,
                          )));
            },
            child: Container(
              width: devicewidth / 3.3,
              alignment: Alignment.center,
              padding: EdgeInsets.all(2),
              child: AutoSizeText(
                imagename,
                softWrap: true,
                style: TextStyle(
                  color: Color.fromARGB(200, 229, 19, 32),
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
