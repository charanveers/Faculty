import 'package:faculty/about_us.dart';
import 'package:faculty/contact_us.dart';
import 'package:faculty/privacy_policy.dart';
import 'package:faculty/widgets/fileWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'edit_profile.dart';

class MyProfile extends StatefulWidget{
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  WidgetsFile widgetsFile = new WidgetsFile();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20),
            decoration: new BoxDecoration(
              boxShadow: [],
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                  alignment: Alignment.topRight,
                  child: Row(
                    children: [
                      Text(
                        "SWISH",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                          child: Text(
                        "My Profile",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 7),
                          width: 80.0,
                          height: 80.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("images/dummy.jpg")))),
                    ],
                  ),
                ),
                Text(
                  "Charanveer singh",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "5412568245",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: widgetsFile.borderButton(
                      Colors.lightGreen,
                      "Edit Profile",
                      Colors.grey[50],
                      20,
                      EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      TextStyle(color: Colors.lightGreen, fontSize: 13), () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => EditProfile()));
                  }),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => AboutUs()));
                    },
                    child: rowWidgeds(
                        "About Us", AssetImage("images/about.png"), false),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => PrivacyPolicy()));
                    },
                    child: rowWidgeds("Privacy Policy",
                        AssetImage("images/privacy.png"), false),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => ContactUs()));
                    },
                    child: rowWidgeds("Contact Us",
                        AssetImage("images/contact_us.png"), false),
                  ),
                  GestureDetector(
                    onTap: () {
                      _modalBottomSheetMenu();
                    },
                    child: rowWidgeds(
                        "Log Out", AssetImage("images/logout.png"), true),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (builder) {
          return new Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              //could change this to Color(0xFF737373),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Are you sure ?",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        "Are you sure you want to logout of the application.",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: customButton()),
                      Expanded(child: customButton())
                    ],
                  )
                ],
              ));
        });
  }

  Widget customButton() {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, top: 25),
      child: RaisedButton(
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: Colors.lightBlueAccent)),
        onPressed: () {},
        color: Colors.lightBlueAccent,
        textColor: Colors.white,
        child: Text("Verify", style: TextStyle(fontSize: 12)),
      ),
    );
  }

  Widget rowWidgeds(String text, AssetImage img, bool isLogOut) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Image(
            image: img,
            height: 30,
            width: 30,
          ),
          Expanded(
              child: Container(
                  padding: EdgeInsets.only(bottom: 1),
                  color: Colors.grey[200],
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          text,
                          style: TextStyle(color: Colors.black),
                        )),
                        !isLogOut
                            ? Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                                color: Colors.grey[300],
                              )
                            : Container()
                      ],
                    ),
                  )))
        ],
      ),
    );
  }

  Widget settingType(String text, double margin, IconData icon) {
    return Container(
      margin: EdgeInsets.only(top: margin),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Icon(icon),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        boxShadow: [
          new BoxShadow(
              offset: Offset(10.0, 5.0),
              blurRadius: 5.0,
              spreadRadius: 0,
              color: Colors.grey[300]),
        ],
      ),
    );
  }
}
