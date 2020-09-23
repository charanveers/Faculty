import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserInfo extends StatefulWidget {
  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  bool _isMale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Tell us about yourself",
          style: new TextStyle(
              fontSize: 17.0,
              color: Colors.black87,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        textTheme: Theme.of(context).textTheme,
      ),
      body: SingleChildScrollView(
          child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(bottom: 10.0, left: 20.0, right: 20.0),
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 30.0),
                        width: 80.0,
                        height: 80.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("images/nexticon.png")))),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(right: 20.0),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 15.0),
                                  child: Text(
                                    "First Name",
                                    style: new TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                buildCodeNumberBox()
                              ],
                            )),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 20.0),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 15.0),
                                  child: Text(
                                    "Last Name",
                                    style: new TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                buildCodeNumberBox()
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.calendar_today),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "D.O.B",
                          style: new TextStyle(
                              fontSize: 12.0,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        decoration: myBoxDecoration(),
                        child: Text(
                          "02/08/2020",
                          style: TextStyle(
                              fontSize: 11.0,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Gender",
                        style: TextStyle(
                            fontSize: 11.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_isMale) {
                              _isMale = false;
                            } else {
                              _isMale = true;
                            }
                          });
                        },
                        child: new Container(
                          margin: EdgeInsets.only(left: 20.0),
                          child: new Image(
                            height: 40,
                            width: 40,
                            image: AssetImage("images/male.png"),
                          ),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.all(
                                  new Radius.circular(50.0)),
                              color: _isMale ? Colors.blue : Colors.white,
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                          padding: new EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            if (_isMale) {
                              _isMale = false;
                            } else {
                              _isMale = true;
                            }
                          });
                        },
                        child: new Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: new Image(
                            height: 40,
                            width: 40,
                            image: AssetImage("images/female.png"),
                          ),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.all(
                                  new Radius.circular(50.0)),
                              color: _isMale?Colors.white:Colors.blue,
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                          padding: new EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Contact Number",
                        style: TextStyle(
                            fontSize: 11.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: buildCodeNumberBox(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Email Id",
                        style: TextStyle(
                            fontSize: 11.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: buildCodeNumberBox(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Select Institution",
                        style: TextStyle(
                            fontSize: 11.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: buildCodeNumberBox(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Upload Institution ID",
                        style: TextStyle(
                            fontSize: 11.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Icon(
                          Icons.upload_file,
                          size: 30,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 15.0),
                  child: Text(
                    "(Note: The Faculty's profile would be sent to the school/institution administrator for verification)",
                    style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                          child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Colors.blue,
                                Colors.blue,
                                Colors.blue
                              ],
                            ),
                          ),
                          padding: EdgeInsets.all(7),
                          child: const Text('Continue',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        ),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.all(Radius.circular(10.0)));
  }

  Widget buildCodeNumberBox() {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(245, 245, 245, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[350],
            blurRadius: 10.0,
          )
        ],
      ),
      child: TextField(
        maxLines: 1,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: new InputDecoration(
          isDense: true,
          border: new OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
