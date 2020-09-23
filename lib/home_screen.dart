import 'package:faculty/row_home.dart';
import 'package:faculty/scroll_physics.dart';
import 'package:faculty/widgets/fileWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WidgetsFile widgetsFile = new WidgetsFile();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            // Here we create one to set status bar color
            backgroundColor: Colors
                .black, // Set any color of status bar you want; or it defaults to your theme's primary color
          )),
      body: Container(
        color: Colors.white,
        child: Stack(

          children: [
            Container(
              width: double.infinity,
              height: 220,
              color: Colors.white,
              child: Expanded(
                child: Image(
                    fit: BoxFit.fill,
                    height: double.infinity,
                    width: double.infinity,
                    image: AssetImage("images/banner.png")),
              ),
            ),
            Positioned(left: 1,
              child: Container(margin: EdgeInsets.only(top: 15, left: 15),
                child: Text("SWISH", style: TextStyle(fontSize: 15,
                    color: Colors.lightGreen,
                    fontWeight: FontWeight.bold),),),),
            Container(
              height: 220,
              width: double.infinity,
              child: Center(child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Class 10th", style: TextStyle(fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text("Batch E", style: TextStyle(fontSize: 20,
                        color: Colors.lightGreen,
                        fontWeight: FontWeight.bold),),
                  )
                ],
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 200,bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  border: Border.all(color: Colors.white)),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                    padding: EdgeInsets.zero,
                    child: TextField(
                      textInputAction: TextInputAction.done,
                      onEditingComplete: () => FocusScope.of(context).unfocus(),
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 0),
                          hintText: "Search by name...",
                          prefixIcon: Icon(Icons.search, color: Colors.black,),
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(25.0),
                              ),
                              borderSide: BorderSide.none
                          )
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20,top: 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(child: Row(children: [Text("Batch Strength: ",
                          style: TextStyle(color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),),
                          Text("35", style: TextStyle(color: Colors.lightGreen,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),)
                        ],)),
                        RaisedButton(
                            elevation: 0,
                            padding: EdgeInsets.all(5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(color: Colors.lightBlueAccent)),
                            onPressed: () {

                            },
                            color: Colors.white,
                            textColor: Colors.white,
                            child: Row(children: [
                              Icon(Icons.note_add_outlined,color: Colors.lightBlueAccent,),
                              Padding(padding:EdgeInsets.only(left: 10,right: 10),
                                  child:Text("Add Test Marks",
                                      style: TextStyle(fontSize: 12,color: Colors.lightBlueAccent)))
                            ],)
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: ScrollConfiguration(
                        behavior: MyBehavior(),
                        child: ListView.builder(
                            itemCount: 8,
                            itemBuilder: (context, idx){
                              return rowWidget();
                            }
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ));
  }

  Widget rowWidget() {
    return Container(

        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 10.0, left: 15, right: 15),
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: Colors.grey[200])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[100],
                              blurRadius: 15.0,
                            ),
                          ],
                          border: Border.all(color: Colors.white, width: 2),
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images/dummy.jpg")))),
                  Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.symmetric(horizontal: 18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Charanveer singh",
                                style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "charanveer singh",
                                style: new TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: widgetsFile.iconText(
                            "Good Behavior",
                            Icons.thumb_up,
                            10,
                            Colors.black,
                            Colors.yellow[50],
                            Colors.yellow[50],
                            FontWeight.normal)),
                    Expanded(
                        child: widgetsFile.iconText(
                            "Bad Behavior",
                            Icons.thumb_down,
                            10,
                            Colors.black,
                            Colors.red[50],
                            Colors.red[50],
                            FontWeight.normal)),
                    Expanded(
                        child: widgetsFile.iconText(
                            "Send Awards",
                            Icons.lightbulb,
                            10,
                            Colors.black,
                            Colors.blue[50],
                            Colors.blue[50],
                            FontWeight.normal)),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
