import 'package:faculty/widgets/fileWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class IntroScreen extends StatelessWidget {
  WidgetsFile widgetsFile =new WidgetsFile();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            // Here we create one to set status bar color
            backgroundColor: Colors
                .black, // Set any color of status bar you want; or it defaults to your theme's primary color
          )),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children:[
              Expanded(child: widgetsFile.imageWidget(AssetImage("images/introimage.png"), double.infinity, double.infinity, BoxFit.fill,EdgeInsets.zero)),
              widgetsFile.customText("Fintech app is there for you", 30.0, FontWeight.bold, Colors.black,TextAlign.center,EdgeInsets.only(top: 40.0)),
              widgetsFile.customText("Lorem Ipsum is simply dummy text of the printing and typesetting industry", 13.0, FontWeight.normal, Colors.grey,TextAlign.center,EdgeInsets.only(top: 10.0)),
             Container(
               width: double.infinity,
               margin: EdgeInsets.only(top: 30.0,bottom: 10.0),
               child:  RaisedButton(
                 padding: EdgeInsets.all(15),
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(8.0),
                     side: BorderSide(color: Colors.blue)),
                 onPressed: () {
                   Navigator.of(context).pushReplacement(MaterialPageRoute(
                       builder: (BuildContext context) => MyHomePage()));
                 },
                 color: Colors.blue,
                 textColor: Colors.white,
                 child: Text("Get Started".toUpperCase(),
                     style: TextStyle(fontSize: 14)),
               ),
             )
            ],
          ),
        )
      ),
    );
  }
}