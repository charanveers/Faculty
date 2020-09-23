import 'dart:ffi';

import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: AppBar(
              // Here we create one to set status bar color
              backgroundColor: Colors
                  .black, // Set any color of status bar you want; or it defaults to your theme's primary color
            )),
        body: Container(
            color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.amberAccent,
                    child: Text("dsdsaff"),
                  ),
                )


              ],
            )));
  }
}
