import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dashboard.dart';


class VerifyPhone extends StatefulWidget {
  final String phoneNumber;
  VerifyPhone({@required this.phoneNumber});

  @override
  _VerifyPhoneState createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  String code = "";
  final etOne = TextEditingController();
  final etTwo = TextEditingController();
  final etThree = TextEditingController();
  final etFour = TextEditingController();



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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 30,top: 20),
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                     Container(
                      margin: EdgeInsets.only(top: 20.0),
                       child: Image.asset(
                         'images/verify.png',
                         height: 120,
                         width: 120,
                       ),
                     ),
                     Padding(
                          padding: EdgeInsets.only(bottom: 30.0),
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 30),
                                child: Text(
                                  "Verification",
                                  style: new TextStyle(
                                      fontSize: 30.0,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  "We have sent an OTP to your registered \n mobile number ",
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey[400],
                                      fontWeight: FontWeight.bold),
                                ),
                              ),

                             Container(
                               margin: EdgeInsets.only(top: 30),
                               child:  Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   buildCodeNumberBox(etOne),
                                   buildCodeNumberBox(etTwo),
                                   buildCodeNumberBox(etThree),
                                   buildCodeNumberBox(etFour),
                                 ],
                               ),
                             ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Don't receive the code ? ",
                                      style: new TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    Text(
                                      "Resend",
                                      style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.lightGreen,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(left: 30,right: 30,top: 25),
                                child:  RaisedButton(
                                  padding: EdgeInsets.all(15),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      side: BorderSide(color: Colors.lightBlueAccent)),
                                  onPressed: () {

                                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                        Dashboard()), (Route<dynamic> route) => false);
                                  },
                                  color: Colors.lightBlueAccent,
                                  textColor: Colors.white,
                                  child: Text("Verify",
                                      style: TextStyle(fontSize: 12)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      

                      
                      
                    ],
                  ),
                ),
              ),

            ],
          )
      ),
    );
  }

  Widget buildCodeNumberBox(TextEditingController controller){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
          width: 50.0,
          height: 50.0,
          child: TextField(
            onChanged: (_) => {
            if(controller.text.length==1 && controller != etFour)
            {
            FocusScope.of(context).nextFocus()
            }
            else if(controller.text.length==0 && controller != etOne){
              FocusScope.of(context).previousFocus()
            }
          },
            controller: controller,
            keyboardType: TextInputType.number,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            textAlign: TextAlign.center,
            decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Colors.grey[800],fontWeight: FontWeight.bold,
                  height: 50.0,
                ),
                fillColor: Colors.grey[200]),
          )
      ),
    );
  }
}
