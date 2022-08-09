// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, library_private_types_in_public_api, no_logic_in_create_state, prefer_typing_uninitialized_variables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  final imagename, imagelink;
  const Homepage({Key? key, this.imagename, this.imagelink}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState(imagename, imagelink);
}

class _HomepageState extends State<Homepage> {
  String imagename = '', imagelink = '';
  _HomepageState(this.imagename, this.imagelink);
  @override
  Widget build(BuildContext context) {
    final devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color.fromARGB(200, 229, 19, 32),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu_rounded),
              iconSize: 30,
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        centerTitle: true,
        title: AutoSizeText(
          imagename,
          softWrap: true,
          style: TextStyle(
            color: Color.fromARGB(200, 229, 19, 32),
            fontSize: 40.0,
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        width: devicewidth / 1.8,
                        height: devicewidth / 2.5,
                        child: Image(
                          image: AssetImage(imagelink),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        '$imagename with Extra Cheese',
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AutoSizeText(
                        ' GHS 200.00',
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            width: devicewidth / 4,
                            height: devicewidth / 4,
                            child: Image(
                              image: AssetImage(imagelink),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: devicewidth / 4,
                            child: AutoSizeText(
                              'Fries $imagename',
                              textAlign: TextAlign.center,
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            width: devicewidth / 3.2,
                            height: devicewidth / 3.2,
                            child: Image(
                              image: AssetImage(imagelink),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            width: devicewidth / 4,
                            height: devicewidth / 4,
                            child: Image(
                              image: AssetImage(imagelink),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: devicewidth / 4,
                            child: AutoSizeText(
                              'Plain $imagename',
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: devicewidth - 20,
                  child: AutoSizeText(
                    'Ingredients: Buns, Tomatoes, Lettuce, Cheese (Extra), Beef, Millet.',
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                    ),
                  ),
                ),
                SizedBox(
                  height: .0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MaterialButton(
                    onPressed: () {},
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
                      'Proceed to Order',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
